	`timescale 1ns / 1ps
	//////////////////////////////////////////////////////////////////////////////////
	// Company: 
	// Engineer: 
	// 
	// Create Date:    14:11:12 10/05/2022 
	// Design Name: 
	// Module Name:    top_module 
	// Project Name: 
	// Target Devices: 
	// Tool versions: 
	// Description: 
	//
	// Dependencies: 
	//
	// Revision: 
	// Revision 0.01 - File Created
	// Additional Comments: 
	//
	//////////////////////////////////////////////////////////////////////////////////
	module top_module(
	
		// LEDS
		output	PWR_LED,			//wired
		output	ACTION_LED,		//wired

		// SERIAL PORT
		input		RESET_IN,		//wired (to ~rst)
		input		ATN_IN,			//wired
		input		CLK_IN,			//wired
		output	CLK_OUT,			//wired
		input		DATA_IN,			//wired
		output	DATA_OUT,		//wired
		input		SRQ_IN,			//wired
		output	SRQ_OUT,			//wired

		// FLOPPY DRIVE
		output 	SIDE1,			//wired
		output 	WGATE,			//wired
		output 	WDATE,			//wired
		input 	DSKCHG,			//wired
		input 	RDATA,			//wired
		input 	WPT,				//wired
		input 	TRK00,			//wired
		input 	INDEX,			//wired
		input 	REDWC_IN,		//not used
		output 	STEP,				//wired
		output 	DIR,				//wired
		output 	MOTEB,			//wired
		output 	DRVSA,			//not used
		output 	DRVSB,			//wired
		output 	MOTEA,			//not used	
		output 	REDWC_OUT,		//not used

		// DEVICE NUMBER SELECT
		input 	SW0,
		input 	SW1,
		
		// MAIN CLOCK SIGNAL
		input 	clk				// 16MHz to FPGA logic
	);

	// Clock signals
	wire phi_0;			// 2 MHz to CPU
	wire phi_2;			// 2 MHz to system
	wire fdc_clk;		// 8 MHz to drive controller (not used, see WF1772IP_TOP CLK requirements)

	// Bus signals
	wire rstn;			// active low reset signal
	wire irq;
	wire rw;
	wire [15:0] addr;
	wire [7:0] data_out_cpu;
	wire [7:0] data_in_cpu;

	// Constants
	`define vcc 1'b1
	`define gnd 1'b0

	// Other auxiliary signals
	reg RDY;
	initial RDY <= 1'b1;
	always @(posedge clk) begin
		if(!rstn)
			RDY <= 1'b1;
		else begin
			case({MOTEB, INDEX})	//motor on? index?
				2'b00: RDY <= 1'b1;
				2'b01: RDY <= 1'b1;
				2'b10: RDY <= RDY;
				2'b11: RDY <= 1'b0;
			endcase
		end
	end

	wire DATA_OUT_AUX;
	wire ATN_ACK;
	wire SP_OUT;
	wire CNT_OUT;
	wire SIDE0;
	wire MOTOR;

	wire [7:0] pa_in;
	wire [7:0] pa_out;
	wire [7:0] pb_in;
	wire [7:0] pb_out;
	
	//pb_in[0] = DATA_IN;
	//pb_out[1] = DATA_OUT_AUX;
	//pb_in[2] = CLK_IN;
	//pb_out[3] = CLK_OUT;
	//pb_out[4] = ATN_ACK;
	//pb_out[5] unused (fast_ser_dir)
	//pb_in[6] = ~WPT;
	//pb_in[7] = ATN_IN; 
	
	//pa_out[0] = SIDE0;
	//pa_in[1] = RDY;
	//pa_out[2] = MOTOR;
	//pa_in[3] = SW0;
	//pa_in[4] = SW1;
	//pa_out[5] = PWR_LED;
	//pa_out[6] = ACTION_LED;
	//pa_in[7] = ~DSKCHG;
	  
	iecdrv_mos8520 CIA (
		.clk(clk),
		.phi2_p(phi_2), // Phi 2 positive edge
		.phi2_n(~phi_2), // Phi 2 negative edge
		.res_n(rstn),
		.cs_n(addr[15:13]!=3'b010),		//address range: $4000 (U6)
		.rw(rw),
		.rs(addr[3:0]),
		.db_in(data_out_cpu),
		.db_out(data_in_cpu),
		.irq_n(irq),
		.tod(vcc),

		.pa_in(pa_in),
		.pa_out(pa_out),

		.pb_in(pb_in),
		.pb_out(pb_out),

		.flag_n(~ATN_IN),
		.pc_n(),	//not connected

		.sp_in(~DATA_IN),
		.sp_out(SP_OUT),
		.cnt_in(~SRQ_IN),
		.cnt_out(CNT_OUT)
	);

	assign pb_in[0] = DATA_IN;
	assign DATA_OUT_AUX = pb_out[1];
	assign pb_in[2] = CLK_IN;
	assign CLK_OUT = pb_out[3];
	assign ATN_ACK = pb_out[4];
	//pb_out[5] unused (fast_ser_dir)
	assign pb_in[6] = ~WPT;
	assign pb_in[7] = ATN_IN; 
	
	assign SIDE0 = pa_out[0];
	assign pa_in[1] = RDY;
	assign MOTOR = pa_out[2];
	assign pa_in[3] = SW0;
	assign pa_in[4] = SW1;
	assign PWR_LED = pa_out[5];
	assign ACTION_LED = pa_out[6];
	assign pa_in[7] = ~DSKCHG;

	assign DATA_OUT = (~SP_OUT) || DATA_OUT_AUX || (ATN_IN && ATN_ACK);
	assign SRQ_OUT = ~CNT_OUT;
	assign SIDE1 = ~SIDE0;
	assign MOTEB = ~MOTOR;
	assign DRVSB = gnd;

	// Disk driver
	WF1772IP_TOP FDC (
		.CLK(clk),
		.MRn(rstn),
		.CSn(!(phi_2 && (addr[15:13]==3'b011))),
		.RWn(rw),
		.A1(addr[1]),
		.A0(addr[0]),
		.DATA_IN(data_out_cpu),
		.DATA_OUT(data_in_cpu),
		.RDn(~RDATA),
		.TR00n(~TRK00),
		.IPn(~INDEX),
		.WPRTn(~WPT),
		.DDEn(gnd),
		.HDTYPE(vcc),	//MFM, double density (see wf1772ip_digital_pll)
		.MO(),			//not connected
		.WG(WGATE),
		.WD(WDATE),
		.STEP(STEP),
		.DIRC(DIR),
		.DRQ(),			//not connected
		.INTRQ()			//not connected
	);

	// Processor
	chip_6502 CPU (
		.clk(clk),    	// FPGA clock
		.phi(phi_0),   // 6502 clock
		.res(rstn),
		.so(vcc),
		.rdy(vcc),
		.nmi(vcc),
		.irq(irq),
		.dbi(data_in_cpu),
		.dbo(data_out_cpu),
		.rw(rw),
		.phi2(phi_2),
		.sync(),			//not connected
		.ab(addr)
	);

	// RAM module
	SRAM_8K SRAM (
		.clk(clk), 
		.addr(addr[12:0]), 
		.data_in(data_out_cpu), 
		.data_out(data_in_cpu), 
		.rw(rw && phi_0), 				//WE signal sync (U6)
		.en(addr[15:13]==3'b000)		//address range: $0000-$1FFF (U6)
	);

	// ROM module
	ROM_23256 ROM (
		.clk(clk), 
		.addr(addr[14:0]), 
		.data(data_in_cpu), 
		.oe(rw && addr[15])				//address range: $8000-$FFFF (U7)
	);

	// Clock generator
	clock_gen sysclk (
		.clk(clk), 
		.rstn(rstn), 
		.phi_0(phi_0), 
		.fdc_clk()		//not used
	);

	assign rstn = ~RESET_IN;

endmodule
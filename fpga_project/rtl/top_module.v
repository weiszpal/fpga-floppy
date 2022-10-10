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
    output PWR_LED,
    output ACTION_LED,
	 
    input RESET_IN,		//wired to ~rst
    input ATN_IN,
    input CLK_IN,
    output CLK_OUT,
    input DATA_IN,
    output DATA_OUT,
    input SRQ_IN,
    output SRQ_OUT,
	 
    output SIDE1,
    output WGATE,
    output WDATE,
    input DSKCHG,
    input RDATA,
    input WPT,
    input TRK00,
    input INDEX,
    input REDWC_IN,
    output STEP,
    output DIR,
    output MOTEB,
    output DRVSA,
    output DRVSB,
    output MOTEA,
    output REDWC_OUT,
	 
	 input SW[1:0]
    );
	 
	// Clock signals
	wire clk;			// 16MHz to FPGA logic
	wire phi_0;			// 2 MHz to CPU
	wire phi_2;			// 2 MHz to system
	wire fdc_clk;		// 8 MHz to drive controller (not used, see WF1772IP_TOP CLK requirements)

	// Bus signals
	wire rst;
	wire irq;
	wire rw;
	wire [15:0] addr;
	wire [7:0] data_out_cpu;
	wire [7:0] data_in_cpu;

	// Constants
	reg vcc;
	reg gnd;
	initial vcc <= 1'b1;
	initial gnd <= 1'b0;

	iecdrv_mos8520 CIA (
	  .clk(clk),
	  .phi2_p(phi_2), // Phi 2 positive edge
	  .phi2_n(~phi_2), // Phi 2 negative edge
	  .res_n(rst),
	  .cs_n(addr[15:13]==3'b010),		//address range: $4000 (U6)
	  .rw(rw),
	  .rs(addr[3:0]),
	  .db_in(data_out_cpu),
	  .db_out(data_in_cpu),
	  
	  //!!! Checking needed & design incomplete:
	  
	  //SIDE0 ~RDY ~MOTOR ~SW[0] ~SW[1] POWER ACTION ~DISK_CHG
	  .pa_in({1'b1, DSKCHG, 1'b1, SW[0], SW[1], 1'b1, 1'b1, DSKCHG}),
	  .pa_out({SIDE1, 1'bz, MOTEB, 1'bz, 1'bz, PWR_LED, ACTION_LED, 1'bz}),
	  
	  //DATA_IN DATA_OUT CLK_IN CLK_OUT ATN_ACK FAST_SER_DIR ~WRPT ATN_IN
	  .pb_in({DATA_IN, 1'1b, CLK_IN, 1'1b, }),
	  .pb_out({1'bz, DATA_OUT, 1'bz, CLK_OUT, }),
	  
	  .flag_n(~ATN_IN),
	  .pc_n(),	//not connected
	  .tod(vcc),
	  .sp_in(),
	  .sp_out(),
	  .cnt_in(),
	  .cnt_out(),
	  .irq_n(irq)
	);

	//***Wiring completed from here:

	// Disk driver
	WF1772IP_TOP FDC (
		.CLK(clk),
		.MRn(rst),
		.CSn(phi_2 && (addr[15:13]==3'b011)),
		.RWn(rw),
		.A1(addr[1]),
		.A0(addr[0]),
		.DATA(data_in_cpu),
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
		.res(rst),
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
		.addr(addr), 
		.data(data_in_cpu), 
		.oe(rw && addr[15])				//address range: $8000-$FFFF (U7)
	);

	// Clock generator
	clock_gen sysclk (
		.clk(clk), 
		.rst(rst), 
		.phi_0(phi_0), 
		.fdc_clk(fdc_clk)
	);
	
	assign rst = ~RESET_IN;
	
endmodule
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
    output REDWC_OUT
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

	//***Wiring completed from here:

	// Disk driver
	WF1772IP_TOP Driver (
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
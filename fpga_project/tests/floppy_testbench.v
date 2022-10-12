`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:48:28 10/12/2022
// Design Name:   top_module
// Module Name:   /home/pali/Documents/BME/MSC/masodik_felev/Onlab/fpga-floppy/fpga_project/ise/floppy_testbench.v
// Project Name:  fpga_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module floppy_testbench;

	// Inputs
	reg RESET_IN;
	reg ATN_IN;
	reg CLK_IN;
	reg DATA_IN;
	reg SRQ_IN;
	reg DSKCHG;
	reg RDATA;
	reg WPT;
	reg TRK00;
	reg INDEX;
	reg REDWC_IN;
	reg SW0;
	reg SW1;
	reg clk;

	// Outputs
	wire PWR_LED;
	wire ACTION_LED;
	wire CLK_OUT;
	wire DATA_OUT;
	wire SRQ_OUT;
	wire SIDE1;
	wire WGATE;
	wire WDATE;
	wire STEP;
	wire DIR;
	wire MOTEB;
	wire DRVSA;
	wire DRVSB;
	wire MOTEA;
	wire REDWC_OUT;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.PWR_LED(PWR_LED), 
		.ACTION_LED(ACTION_LED), 
		.RESET_IN(RESET_IN), 
		.ATN_IN(ATN_IN), 
		.CLK_IN(CLK_IN), 
		.CLK_OUT(CLK_OUT), 
		.DATA_IN(DATA_IN), 
		.DATA_OUT(DATA_OUT), 
		.SRQ_IN(SRQ_IN), 
		.SRQ_OUT(SRQ_OUT), 
		.SIDE1(SIDE1), 
		.WGATE(WGATE), 
		.WDATE(WDATE), 
		.DSKCHG(DSKCHG), 
		.RDATA(RDATA), 
		.WPT(WPT), 
		.TRK00(TRK00), 
		.INDEX(INDEX), 
		.REDWC_IN(REDWC_IN), 
		.STEP(STEP), 
		.DIR(DIR), 
		.MOTEB(MOTEB), 
		.DRVSA(DRVSA), 
		.DRVSB(DRVSB), 
		.MOTEA(MOTEA), 
		.REDWC_OUT(REDWC_OUT), 
		.SW0(SW0), 
		.SW1(SW1), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		RESET_IN = 0;
		ATN_IN = 0;
		CLK_IN = 0;
		DATA_IN = 0;
		SRQ_IN = 0;
		DSKCHG = 0;
		RDATA = 0;
		WPT = 0;
		TRK00 = 0;
		INDEX = 0;
		REDWC_IN = 0;
		SW0 = 0;
		SW1 = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		RESET_IN = 1;
	end
      
	always #5
		clk <= ~clk;
		
endmodule


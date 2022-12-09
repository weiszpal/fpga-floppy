`timescale 10ns / 10ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:12:14 09/19/2022
// Design Name:   clock_gen
// Module Name:   /home/pali/Documents/BME/MSC/masodik_felev/Onlab/fpga-floppy/fpga_project/clock_test.v
// Project Name:  fpga_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_test;

	// Inputs
	reg fpga_clk;

	// Outputs
	wire clk;
	wire phi_0;
	wire phi_2;
	wire clk_sel_fdc;

	// Instantiate the Unit Under Test (UUT)
	clock_gen uut (
		.reset(1'b0),
		.fpga_clk(fpga_clk),
		.clk(clk),
		.phi_0(phi_0),
		.phi_2(phi_2),
		.clk_sel_fdc(clk_sel_fdc)
	);

	initial begin
		// Initialize Inputs
		fpga_clk = 0;
	end
	
	always #1
		fpga_clk = ~fpga_clk;
	
endmodule


`timescale 1ns / 1ps

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
	reg clk;
	reg rst;

	// Outputs
	wire phi_0;
	wire fdc_clk;

	// Instantiate the Unit Under Test (UUT)
	clock_gen uut (
		.clk(clk), 
		.rst(rst), 
		.phi_0(phi_0), 
		.fdc_clk(fdc_clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		#200;
		rst = 0;
		
		#200;
		rst = 1;
	end
	
	always #5
		clk = ~clk;
	
endmodule


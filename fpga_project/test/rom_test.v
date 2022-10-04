`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:12:18 09/19/2022
// Design Name:   ROM_23256
// Module Name:   /home/pali/Documents/BME/MSC/masodik_felev/Onlab/fpga-floppy/fpga_project/rom_test.v
// Project Name:  fpga_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ROM_23256
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rom_test;

	// Inputs
	reg clk;
	reg [14:0] addr;
	reg oe;

	// Outputs
	wire [7:0] data;

	// Instantiate the Unit Under Test (UUT)
	ROM_23256 uut (
		.clk(clk), 
		.addr(addr), 
		.data(data), 
		.oe(oe)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		addr = 0;
		oe = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		oe = 1;
		addr = 0;
		#10;
		addr = 1;
		#10;
		addr = 2;
		#10;
		oe = 0;
		#10
		addr = 15'h7FFE;
		#20;
		oe = 1;
	end
      
	always #5
		clk = ~clk;
		
endmodule


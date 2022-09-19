`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:01:09 09/19/2022
// Design Name:   SRAM_8K
// Module Name:   /home/pali/Documents/BME/MSC/masodik_felev/Onlab/fpga-floppy/fpga_project/ram_test.v
// Project Name:  fpga_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SRAM_8K
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_test;

	// Inputs
	reg [12:0] addr;
	reg clk;
	reg we;
	reg cs;
	reg oe;

	// Bidirs
	wire [7:0] data;

	reg [7:0] temp_data;

	// Instantiate the Unit Under Test (UUT)
	SRAM_8K uut (
		.data(data), 
		.addr(addr), 
		.clk(clk), 
		.we(we), 
		.cs(cs), 
		.oe(oe)
	);

	initial begin
		// Initialize Inputs
		addr = 0;
		clk = 0;
		we = 0;
		cs = 0;
		oe = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//TODO: TEST
		
	end
		
	always #5 begin
		clk = ~clk;
	end
	
endmodule


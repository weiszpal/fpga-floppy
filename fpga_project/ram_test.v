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
	reg rw;
	reg en;

	wire [7:0] data_read;
	reg [7:0] data_write;

	// Instantiate the Unit Under Test (UUT)
	SRAM_8K uut (
		.data_in(data_write), 
		.data_out(data_read), 
		.addr(addr), 
		.clk(clk), 
		.rw(rw), 
		.en(en)
	);
	
	initial begin
		// Initialize Inputs
		addr = 0;
		clk = 0;
		rw = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		en = 0;
		rw = 0;
		data_write = 8'hFF;		//write
		#20;
		
		en = 1;
		rw = 0;
		data_write = 8'hFF;		//write
		
		#20;
		rw = 1;						//read
		
		#20;	
		addr = 1;
		rw = 0;
		data_write = 8'hAA;		//write
		
		#20;
		addr = 0;
		rw = 1;

		#20;
		addr = 1;
		rw = 1;
		
		#20;
		en = 0;
		
		#20;
		en = 1;
		
		#20;
		en = 0;
		
	end
		
	always #5 begin
		clk = ~clk;
	end
	
endmodule


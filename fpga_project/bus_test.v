`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:56:29 10/04/2022
// Design Name:   SRAM_8K
// Module Name:   /home/pali/Documents/BME/MSC/masodik_felev/Onlab/fpga-floppy/fpga_project/bus_test.v
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

module bus_test;

	// System CLK
	wire phi_0;
	wire fdc_clk;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0] addr;
	reg [7:0] data_in_mem;
	reg RW;

	// Outputs
	wire [7:0] data_out_mem;

	// Instantiate the Unit Under Test (UUT)
	SRAM_8K sram_uut (
		.clk(clk), 
		.addr(addr[12:0]), 
		.data_in(data_in_mem), 
		.data_out(data_out_mem), 
		.rw(RW && phi_0), 				//WE signal sync (U6)
		.en(addr[15:13]==3'b000)		//address range: $0000-$1FFF (U6)
	);

	// Instantiate the Unit Under Test (UUT)
	ROM_23256 rom_uut (
		.clk(clk), 
		.addr(addr), 
		.data(data_out_mem), 
		.oe(RW && addr[15])				//address range: $8000-$FFFF (U7)
	);

	// Instantiate the Unit Under Test (UUT)
	clock_gen clk_uut (
		.clk(clk), 
		.rst(rst), 
		.phi_0(phi_0), 
		.fdc_clk(fdc_clk)
	);

	always #5
		clk = ~clk;

	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;
		addr = 0;
		data_in_mem = 0;
		RW = 0;

		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here
		rst = 0;
		
		#20;
		RW = 1;
		addr = 16'h8000;
		
		#20;
		addr = 16'hFFFE;
		
		#20;
		RW = 0;
		data_in_mem = 8'hAA;
		addr = 16'h0000;
		
		#120;
		RW = 1;
		
		#80;
		data_in_mem = 8'h55;
		addr = 16'h1FFF;
	end
      
endmodule


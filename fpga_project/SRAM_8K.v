`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:29 09/19/2022 
// Design Name: 
// Module Name:    SRAM_8K 
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
module SRAM_8K(
	 input clk,
    input [12:0] addr,
    input [7:0] data_in,
	 output reg [7:0] data_out,
    input rw,
	 input en
    );

	reg[7:0] RAM[8191:0];

	initial data_out <= 8'bz;

	always @(posedge clk)
	begin
		if(en)
			if(rw) 
				data_out <= RAM[addr];
			else begin
				RAM[addr] <= data_in;
				data_out <= 8'bz;
			end
		else
			data_out <= 8'bz;
	end
	
	//assign data_out = RAM[addr];

endmodule

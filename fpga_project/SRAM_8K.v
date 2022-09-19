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
    inout [7:0] data,
    input [12:0] addr,
    input clk,
    input rw,
	 input en
    );

	reg[7:0] RAM[8191:0];
	reg[7:0] data_out;
	
	initial begin
		data_out = 8'bz;
	end

	always @(posedge clk)
	begin
		if(en) begin
			if(rw) begin
				data_out <= RAM[addr];		//read
			end else begin
				RAM[addr] <= data;			//write
			end
		end
	end
	
	assign data = (en & rw) ? data_out : 8'bz;

endmodule

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
    input we,
	 input cs,
    input oe
    );

	reg[7:0] RAM[8191:0];
	reg[7:0] temp_data;

	always @(posedge clk)
	begin
		if(cs & oe) begin
			if(we) begin
				RAM[addr] <= data;
				temp_data <= 8'bz;
			end else begin
				temp_data <= RAM[addr];
			end
		end else begin
			temp_data <= 8'bz;
		end
	end
	
	assign data = temp_data;

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:59:27 09/19/2022 
// Design Name: 
// Module Name:    ROM_23256 
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
module ROM_23256(
	 input clk,
    input [14:0] addr,
    output reg [7:0] data,
    input oe
    );

	reg[7:0] ROM[32767:0];

	initial begin
		$readmemh("1581-rom.318045-02.mem", ROM);
	end

	always @(posedge clk)
	begin
		if(oe)
		begin
			data <= ROM[addr];
		end else begin
			data <= 8'bz;
		end
	end

endmodule

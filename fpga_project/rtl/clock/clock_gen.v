`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:20 09/19/2022 
// Design Name: 
// Module Name:    clock_gen 
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
module clock_gen(
    input clk,				// 16 MHZ input
    input rstn,			// active low reset
    output phi_0,			// 2 MHz system clk
    output fdc_clk		// 8 MHz for FDC chip
    );

	reg[2:0] Q;

	initial Q <= 3'b000;

	always @(posedge clk)
	begin
			if(!rstn)
				Q <= 0;
			else
				Q <= Q + 1'b1;
	end

	assign fdc_clk = (Q[0] & 1'b1);		// divide by 2
	assign phi_0 = (Q[2] & 1'b1);			// divide by 8

endmodule

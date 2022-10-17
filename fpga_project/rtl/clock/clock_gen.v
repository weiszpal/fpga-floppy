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
    output phi_0,			// 2 MHz clk pulses for CPU
	 output phi_2			// 2 MHz system clk
    );

	reg[2:0] Q;
	reg D;

	initial Q <= 3'b000;

	always @(posedge clk)
	begin
			D <= Q[2];
			Q <= Q + 1'b1;
	end

	//assign phi_0 = (Q[2] & (Q[2] ^ D));		// divide by 8
	assign phi_0 = Q[2];
	assign phi_2 = Q[2];

endmodule

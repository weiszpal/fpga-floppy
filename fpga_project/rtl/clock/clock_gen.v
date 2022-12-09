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
	input reset,
	input fpga_clk,	// 50 MHZ input
	output clk,			// 16 MHz output for basically everything, especially wf1772
	output clk_tap,	// 16 MHz output for debug purposes
	output phi_0,		// 2 MHz clk pulses for CPU
	output phi_2,		// 2 MHz system clk
	output clk_sel_fdc
	);

	wire locked;
	wire pll_clk_out;

	reg[2:0] Q;

	initial Q <= 3'b000;

	always @(posedge pll_clk_out)
	begin
		Q <= Q + 1'b1;
	end

	assign clk = pll_clk_out;

	assign phi_0 = (Q==0);
	assign phi_2 = (Q==0);
	assign clk_sel_fdc = !Q[2];

	clk_pll PLL(
     .fpga_clk(fpga_clk),
     .reset(reset),
     .clk_out(pll_clk_out),
	  .clk_tap(clk_tap)
	);

endmodule

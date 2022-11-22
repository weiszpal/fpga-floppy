`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:13 11/22/2022 
// Design Name: 
// Module Name:    clk_pll 
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
module clk_pll(
    input fpga_clk,
    input reset,
    output clk_out,
	 output clk_tap
    );

	//wire clk_in;
	//wire clk_fb;
	//wire clk_fx;
	wire locked;
	wire [7:0] status;

	IBUFG fpga_clk_in_buf (
      .O(clk_in), 	// Clock buffer output
      .I(fpga_clk)  	// Clock buffer input (connect directly to top-level port)
   );

	DCM_SP #(
      .CLKDV_DIVIDE(2), 	                 // CLKDV divide value
                                            // (1.5,2,2.5,3,3.5,4,4.5,5,5.5,6,6.5,7,7.5,8,9,10,11,12,13,14,15,16).
      .CLKFX_DIVIDE(25),                    // Divide value on CLKFX outputs - D - (1-32)
      .CLKFX_MULTIPLY(8),						  // Multiply value on CLKFX outputs - M - (2-32)
      .CLKIN_DIVIDE_BY_2("FALSE"),          // CLKIN divide by two (TRUE/FALSE)
      .CLKIN_PERIOD(20),                    // Input clock period specified in nS
      .CLKOUT_PHASE_SHIFT("NONE"),          // Output phase shift (NONE, FIXED, VARIABLE)
      .CLK_FEEDBACK("1X"),                  // Feedback source (NONE, 1X, 2X)
      .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"), // SYSTEM_SYNCHRNOUS or SOURCE_SYNCHRONOUS
		.PHASE_SHIFT(0),                      // Amount of fixed phase shift (-255 to 255)
      .STARTUP_WAIT("FALSE")                // Delay config DONE until DCM_SP LOCKED (TRUE/FALSE)
   )
   DCM_SP_inst (
		.CLKIN(clk_in),      // 1-bit input: Clock input
		.CLKFB(clk_fx),		// 1-bit input: Clock feedback input
      .CLK0(),				   // 1-bit output: 0 degree clock output
      .CLK180(),     		// 1-bit output: 180 degree clock output
      .CLK270(),     		// 1-bit output: 270 degree clock output
      .CLK2X(),       		// 1-bit output: 2X clock frequency clock output
      .CLK2X180(), 			// 1-bit output: 2X clock frequency, 180 degree clock output
      .CLK90(),       		// 1-bit output: 90 degree clock output
      .CLKDV(),       		// 1-bit output: Divided clock output
      .CLKFX(clk_fx),      // 1-bit output: Digital Frequency Synthesizer output (DFS)
      .CLKFX180(), 			// 1-bit output: 180 degree CLKFX output
      .LOCKED(locked),     // 1-bit output: DCM_SP Lock Output
      .PSDONE(),     		// 1-bit output: Phase shift done output
      .STATUS(status),     // 8-bit output: DCM_SP status output

      .PSCLK(1'b0),       	// 1-bit input: Phase shift clock input
      .PSEN(1'b0),         // 1-bit input: Phase shift enable
      .PSINCDEC(1'b0), 		// 1-bit input: Phase shift increment/decrement input
		.DSSEN(1'b0),       	// 1-bit input: Unsupported, specify to GND.
		
      .RST(reset)          // 1-bit input: Active high reset input
   );

   /*BUFIO2FB #(
      .DIVIDE_BYPASS("FALSE")  // Bypass divider (TRUE/FALSE)
   )
   BUFG BUFIO2FB_inst (
      .O(clk_fb), 		// 1-bit output: Output feedback clock (connect to feedback input of DCM/PLL)
      .I(clk_out_16) 	// 1-bit input: Feedback clock input (connect to input port)
   );*/

	BUFGCE BUFGCE_inst (
      .O(clk_out),   	// 1-bit output: Clock buffer output
      .CE(locked), 		// 1-bit input: Clock buffer select
      .I(clk_fx)    // 1-bit input: Clock buffer input (S=0)
   );

   ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("SYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) ODDR2_inst (
      .Q(clk_tap),   // 1-bit DDR output data
      .C0(clk_out),   // 1-bit clock input
      .C1(~clk_out),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D0(1'b1), // 1-bit data input (associated with C0)
      .D1(1'b0), // 1-bit data input (associated with C1)
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
   );

endmodule

module chip_6502(
		input clk,						// clock signal
		input rstn,						// active high reset signal
		output [15:0] address,		// address bus
		input [7:0] data_in,			// 8-bit data bus (input)
		output [7:0] data_out,		// 8-bit data bus (output)
		output rw,						// read/write
		input irqn						// active low interrupt request
	);

	wire [23:0] addr_c;
	assign address[15:0] = addr_c[15:0];

	T65 core(
		.Mode(2'b00),
		.Res_n(rstn),
		.Clk(clk),
		.Rdy(1'b1),
		.Abort_n(1'b1),
		.IRQ_n(irqn),
		.NMI_n(1'b1),
		.SO_n(1'b1),
		.R_W_n(rw),
		.Sync(),
		.EF(),
		.MF(),
		.XF(),
		.ML_n(),
		.VP_n(),
		.VDA(),
		.VPA(),
		.A(addr_c),
		.DI(data_in),
		.DO(data_out)
	);
	
endmodule

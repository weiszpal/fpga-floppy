module chip_6502(
		input clk,						// clock signal
		input rstn,						// active high reset signal
		output reg [15:0] address,	// address bus
		input [7:0] data_in,			// 8-bit data bus (input)
		output reg [7:0] data_out,	// 8-bit data bus (output)
		output reg rw,					// read/write
		input irqn						// active low interrupt request
	);

	wire [7:0] dbo_c;
	wire [15:0] ab_c;
	wire we_c;
	wire rst = ~rstn;
	wire irq = ~irqn;

	cpu Core(
		.clk(clk),
		.reset(rst),
		.AB(ab_c),
		.DI(data_in),
		.DO(dbo_c),
		.WE(we_c),
		.IRQ(irq),
		.NMI(1'b0),
		.RDY(1'b1)
	);

	always @(posedge clk or posedge rst)
		begin
		if (rst)
		begin
			address <= 16'd0;
			data_out <= 8'd0;
			rw <= 1'b1;
		end
		else
			if (clk)
			begin
				address <= ab_c;
				data_out <= dbo_c;
				rw <= ~we_c;
		end
	end
	
endmodule

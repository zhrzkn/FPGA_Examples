module _5bit_d_ff(input clk, input [4:0] d, output reg [4:0] q);

	always@(posedge clk) 
		q <= d;

endmodule
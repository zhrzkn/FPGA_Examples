module d_ff(input clk, d, output reg q);

	always@(posedge clk) 
		q <= d;

endmodule
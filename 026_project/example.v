

module example(

	input 		          		CLOCK_50,

	input 		     [3:0]		KEY,

	output		     [9:0]		LEDR
);

wire b = ~KEY[0];
circuit c1(b, cnt[25], LEDR[0], LEDR[9:8]);


wire [31:0] cnt;
counter c0(.clk(CLOCK_50), .count(cnt));

endmodule




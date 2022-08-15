module d_ff_with_enable(input en, clk, d, output reg q);

	always@(posedge clk) 
	begin
		if (en)
			q <= d;
	end

endmodule
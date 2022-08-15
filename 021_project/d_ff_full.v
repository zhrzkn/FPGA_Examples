module d_ff_full(input en, clk, d, reset_n, output reg q);

	always@(posedge clk or negedge reset_n) 
	begin
		
		if (!reset_n)
			q <= 1'b0;
		
		else begin
			if (en)
				q <= d;
		end
		
	end

endmodule
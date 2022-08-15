module counter (input reset_n, en, clk, output reg [31:0] count);
	
	always@(posedge clk or negedge reset_n) 
	begin
		if (!reset_n)
			count = 32'b0;
		else begin
			if (en) 
				count = count + 32'b1;
		end
	end
	
endmodule 
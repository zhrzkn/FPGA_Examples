module counter (input clk, output reg [31:0] count);
	
	always@(posedge clk) 
	begin
		count = count + 32'b1;
	end
	
endmodule 
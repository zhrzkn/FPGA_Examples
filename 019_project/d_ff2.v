module d_ff2(input clk, input en, input [4:0] d,input reset_n,output reg [4:0] q);
	
	always@(posedge clk , negedge reset_n) //reset tanımlaması her zaman negedge ile olur.
		begin
			if (!reset_n)
				q <= 5'b00000;
		else begin
			if(en)
				q <= d;
		end 				//else begin'in end'i
		end 				//begin'in end'i


endmodule 
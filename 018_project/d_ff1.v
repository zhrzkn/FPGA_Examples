
module d_ff1(input clk,input [4:0] d,input EN,output reg [4:0] q); 
                //flip-flop modulü
		    // 0'dan 4'e kadarki ledler yanacak
		     
		
	always@(posedge clk )
	begin
	if (EN==1'b0)   // 9. switch enable iken ledler yanık disable iken sönük.
	q <= d;
	end 
	
endmodule 
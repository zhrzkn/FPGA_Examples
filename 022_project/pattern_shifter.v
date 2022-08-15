module pattern_shifther (input clk, output [9:0] result);

/*
yon = sol 0 sağ 1 
0011100000 0 
0111000000 0
1110000000 0
1110000000 1
0111000000 1
0011100000 1
*/

reg [9:0] pattern = 10'b0011100000;
reg yon = 1'b1;

always@(posedge clk)
begin
	if(!pattern[0] && yon) // sağa kaydırıyoruz
	begin
		pattern <= pattern >> 1;
	end
	else if (!pattern[9] && !yon)  // sola
	begin
		pattern <= pattern << 1;		
	end
	else
	begin
		yon <= !yon;
	end	
end

assign result = pattern;

endmodule
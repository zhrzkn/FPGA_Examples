module example( input CLOCK_50,
                output    [6:0] HEX0,
	          output    [6:0] HEX1,
	          output    [6:0] HEX2,
	          output    [6:0] HEX3,
	          output    [6:0] HEX4,
	          output    [6:0] HEX5,
                input     [3:0] KEY,
                output    [9:0] LEDR,
                input     [9:0] SW);
					 
reg [23:0] digit24bit;
	
	SEG7_LUT_6 segments(HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,digit24bit);  //hızlı değişim olur, göz algılayamaz
	//SEG7_LUT_6 segments (HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,24h'abcdef);  //abcdef sırasıyla yanar.

	always @(negedge KEY[0]) 
		digit24bit <= digit24bit + 24'b1;
		
	assign LEDR = digit24bit[9:0];
		
endmodule

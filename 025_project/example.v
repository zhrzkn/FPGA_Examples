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
	reg [31:0] cnt;
	
	SEG7_LUT_6 segments(HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,digit24bit);
//SEG7_LUT_6 segments (HEX0,HEX1,HEX2,HEX3,HEX4,HEX5, digit24bit count[31:0]); //yavaş değişim
	
	always @(posedge cnt[25])     // 25.bit kullanıldı 2^25  yavaş değişim
		digit24bit <= digit24bit + 24'b1;

	always @(posedge CLOCK_50)
		cnt <= cnt + 32'b1;
		
endmodule
		


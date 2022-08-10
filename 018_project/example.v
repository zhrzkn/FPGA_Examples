
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

d_ff1 d1(CLOCK_50, SW[4:0], SW[9], LEDR[4:0]);    //flip-flop modulünü çağırdık.

endmodule 
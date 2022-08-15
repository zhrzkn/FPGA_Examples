
module count(

	
	input 		          		CLOCK_50,


	input 		     [3:0]		KEY,


	output		     [9:0]		LEDR
);

	
	reg [31:0] counter;
	always @(posedge CLOCK_50) begin
		counter <= counter + 32'b1;
	end
	
	
	reg [1:0] state;
	always @(posedge counter[22]) begin
		state <= nextState;
	end
	
	
	wire x = KEY[3];
	wire y = KEY[2];
	assign LEDR[0] = t;
	
	assign LEDR[9:8] = state;
	
	
	wire [1:0] nextState;
	assign t = state[0];
	assign nextState[0] = state[0]^x^y;								
	assign nextState[1] = (~state[1]&~state[0]&x&~y) | (~state[1]&state[0]&~x&y) | (state[1]&~state[0]&(~x | y)) | (state[1]&state[0]&(x | ~y));
	
endmodule

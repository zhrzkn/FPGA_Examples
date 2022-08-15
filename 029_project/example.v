

module example(

	input 		          		CLOCK_50,


	input 		     [3:0]		KEY,

	
	output		     [9:0]		LEDR
);

	
	reg [31:0] count;
	
	always @(posedge CLOCK_50) begin
		count <= count + 32'b1;
	end
	
	
	reg [1:0] state;
	
	always @(posedge count[25]) begin
		state <= nextState;
	end
	
	
	wire [1:0] nextState;
	wire x,y,z,w;
	
	assign nextState[1] = state[0] ^ state[1];
	assign nextState[0] = ~state[0];
	assign x = state[1];
	assign y = state[1]&~state[0];
	assign z = ~state[1]&state[0];
	assign w = ~state[1];
	
	assign LEDR[3:0] = {x,y,z,w};
	
	assign LEDR[9:8] = state;

endmodule

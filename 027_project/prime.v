
module prime(

	
	input 		          		CLOCK_50,

	
	output		     [9:0]		LEDR
);

	
	reg [31:0] count;
	always @(posedge CLOCK_50) begin
		count <= count + 32'b1;
	end
	
	
	reg [2:0] s;
	always @(posedge count[25]) begin
		s <= n;
	end
	assign LEDR[9:7] = s;
	
	 
	wire [3:0] t;
	assign LEDR[3:0] = t;
	
	assign t[0] = s[2] | s[1] | s[0];
	assign t[1] = (~s[2]&~s[1]) | (~s[2]&s[1]&s[0]) | (s[2]&~s[1]&~s[0]);
	assign t[2] = (~s[2]&s[1]) | (s[2]&~s[1]&s[0]);
	assign t[3] = (s[2]&~s[1]);
	
	wire [2:0] n;
	assign n[0] = ~s[0];
	assign n[1] = (~s[2]&(s[1]^s[0]));
	assign n[2] = (~s[2]&s[1]&s[0]) | (s[2]&~s[1]&~s[0]);
	
endmodule

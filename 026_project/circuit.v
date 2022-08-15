module circuit(input b, input clk, output x, output [1:0] sOut);

	reg [1:0] s;
	wire [1:0] n;

	// state register
	always @(posedge clk) 
	begin
		s <= n;
	end
	
	// combinational circuit
	assign n[1] = (s[1]^s[0]);
	assign n[0] = (~s[1]&~s[0]&b) | (s[1]&~s[0]);
	assign x    = s[1] | s[0];
	
	
	assign sOut = s;

endmodule 
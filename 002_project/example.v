module example (input [3:0] IN,  input in1,in2,in3,in4,
					output [1:0] OUT, output out1,out2);

wire cable;
wire [4:0] elmabus;
and a1(out1, IN[3], IN[2]);
or or1(out2, in1, in2);
	
endmodule 
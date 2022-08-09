module sub(S,C,B,A);

input [3:0] A,B;

output C;
output [3:0] S;
wire [3:0] B_comp;
wire C1,C2,C3;

not X(B_comp, B);   //asign B_comp[3:0] = ~B[3:0]

full_adder FA0(S[0], C1,A[0], B_comp[0],1'b1),
           FA1(S[1], C2,A[1], B_comp[1],C1),
			  FA2(S[2], C3,A[2], B_comp[2],C2),
			  FA3(S[3], C,A[3], B_comp[3],C3);
endmodule 
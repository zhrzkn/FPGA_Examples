module example(input A,B,C, output Z);

wire w1;

and a1(w1,A,B);
or o2(Z,w1,C);
	
endmodule


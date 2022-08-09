module _1bit_xor(result,A,B);  //4bitt

		input [3:0] A,B;
		output [3:0] result;

		xor xx(result[0],A[0],B[0]);
		xor yy(result[1],A[1],B[1]);
		xor zz(result[2],A[2],B[2]);
		xor tt(result[3],A[3],B[3]);

endmodule 
module module_XOR(result,A,B);


		input A,B;
		output result;
		wire r1,r2;

		and x(r1, A, ~B);
		and y(r2, ~A,B);
		or z(result, r1,r2);


endmodule 
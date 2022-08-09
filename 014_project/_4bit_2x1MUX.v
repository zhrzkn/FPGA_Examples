module _4bit_2x1MUX (result, A,B,control);


		input [3:0] A,B;
		input control;
		output [3:0] result;

_1bit_2x1MUX xx(result[0], A[0], B[0], control);
_1bit_2x1MUX yy(result[1], A[1], B[1], control);
_1bit_2x1MUX zz(result[2], A[2], B[2], control);
_1bit_2x1MUX tt(result[3], A[3], B[3], control);

endmodule 
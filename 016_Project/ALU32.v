module ALU32(ALU_slc,a,b,
				ALU_output,carry_out);
	

		input [1:0] ALU_slc;
		input [3:0]  a;
		input [3:0]  b;
		output [3:0] ALU_output;
		output [2:0] carry_out; //output [1:0] carry_out;


		wire [3:0] wADD;
		wire [3:0] wXOR;
		wire [3:0] wSUB;
		wire [3:0] wSLT;
	
		wire carry_in, carry_out_add, carry_out_sub;


adder ADD(wADD,carry_out,a,b,carry_in);

_1bit_xor XOR(wXOR,a,b);

sub SUB(wSUB,carry_out_add,a,b);

setless SLT(wSLT, carry_out_sub,a,b);




_4bit_4x1MUX muxOperation (ALU_output,wADD, wXOR,wSUB,wSLT, ALU_slc);
_1bit_2x1MUX carrySelection(carry_out, carry_out_add, carry_out_sub);

endmodule 
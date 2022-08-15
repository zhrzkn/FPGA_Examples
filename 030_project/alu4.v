module alu4(ALU_output,carry_out,ALU_selection,a,b, carry_in); 

	input[1:0] ALU_selection;
	input[3:0] a,b;
	input carry_in;
	output [3:0] ALU_output;
   output carry_out;
	wire [3:0]wADD,wXOR,wSUB,wSLT;
	wire carry_in, carry_out_add, carry_out_sub, garbage;
	
	_4bit_adder ADD(wADD,carry_out_add,a,b,carry_in);
	xor4 XOR(wXOR,a,b);
	sub4 SUB(wSUB,carry_out_sub,a,b); 
	slt4 SLT(wSLT,garbage,a,b);
	
	
	_4bit_4x1MUX muxOperation(ALU_output,wADD,wSUB,wSLT,wXOR, ALU_selection);
	_1bit_2x1MUX carrySelection(carry_out,carry_out_add, carry_out_sub, ALU_selection[0]);
	
	endmodule 
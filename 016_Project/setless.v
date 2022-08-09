module setless(result,carry_out,a,b);

		input [31:0] a;
		input [31:0] b;
		output [3:0] result;
		output carry_out;
		wire [3:0] sub_result;


sub SU4(sub_result,carry_out,a,b);

		assign result = {3'b0,sub_result[3]};

endmodule 
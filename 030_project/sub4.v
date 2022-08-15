module sub4(result, carry_out, a, b);
input [3:0]a;
input[3:0]b;
output [3:0]result;
output carry_out;
wire c = 1;
wire [3:0]not_b;

assign not_b[3:0] = ~b[3:0];
_4bit_adder s0(result,carry_out,a,not_b,c);

endmodule
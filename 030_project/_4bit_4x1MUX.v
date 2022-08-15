module _4bit_4x1MUX (result, A, B, C, D, select);
input [3:0] A, B, C, D;
input [1:0] select;
output [3:0] result;
wire [3:0] Res_opt_1, Res_opt_2;

_4bit_2x1MUX  cc(Res_opt_1, A, B, select[0]);
_4bit_2x1MUX fef(Res_opt_2, C, D, select[0]);
_4bit_2x1MUX ff(result, Res_opt_1, Res_opt_2, select[1]);

endmodule
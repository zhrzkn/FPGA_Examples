module slt4(result, carry_out,a, b);
input [3:0]a;
input[3:0]b;
output [3:0]result;
output carry_out;
wire [3:0]sub_result;


//find the result of the a-b
sub4 xxxx(sub_result,carry_out,b,a);
//slt result 
assign result = {3'b0,sub_result[3]};



endmodule
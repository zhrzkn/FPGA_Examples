module half_adder(sum, carry_out, a, b);
input a, b;
output sum, carry_out;
// sum = a xor b
// carry_out = a and b
xor sum_of_digits(sum, a, b); //a xor b
and carry_of_sum(carry_out, a, b); //a and b

endmodule
module full_adder(sum, carry_out, a, b, carry_in);
input a, b, carry_in;
output sum, carry_out;
wire temp_sum, first_carry_out, second_carry_out;

// use half adder to a+b
half_adder first_sum(temp_sum, first_carry_out, a, b); //temp_sum = a+ b
half_adder second_sum(sum, second_carry_out, temp_sum, carry_in); //sum = temp_sum+ carry_in

or final_carry_out(carry_out, second_carry_out, first_carry_out); //carry_out = second_carry_out or first_carry_out

endmodule
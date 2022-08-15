module _1bit_2x1MUX (result, A, B, control);
input A, B, control;
output result;
wire and1, and2;

and xx(and1, A, ~control);
and yy(and2, B, control);
or zz(result, and1, and2);

endmodule
module slt4_testbench();
	reg [3:0]a;
	reg [3:0]b;
	wire [3:0]result;
	wire carry_out;

slt4 scdsc(result, carry_out, a, b);
initial begin
a = 4'b0000; b = 4'b1111;
#10;
a = 4'b0101; b = 4'b1111;
#10;
a = 4'b1111; b = 4'b1111;
#10;
b = 4'b0000; a = 4'b0000;
#10;
b = 4'b0000; a = 4'b1111;
#10;
b = 4'b0101; a = 4'b1111;
#10;
end
 
 
initial
begin
$monitor("time = %2d, a =%d, b=%d, result=%1b", $time, a, b, result);
end
 
endmodule
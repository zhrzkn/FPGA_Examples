module muxTest_4x1_testbench();
	reg [3:0]a,b,c,d;
	reg [1:0]select;
	wire [3:0]result;

_4bit_4x1MUX muxTest(result,a, b, c, d, select);

initial begin
a = 4'b0000; b = 4'b1111; c = 4'b0011; d = 4'b1100; select = 2'b00;
#20;
a = 4'b0000; b = 4'b1111; c = 4'b0011; d = 4'b1100; select = 2'b01;
#20;
a = 4'b0000; b = 4'b1111; c = 4'b0011; d = 4'b1100; select = 2'b10;
#20;
a = 4'b0000; b = 4'b1111; c = 4'b0011; d = 4'b1100; select = 2'b11;
#20;
end
 
 
initial
begin
$monitor("time = %2d, select=%2b a =%4b, b=%4b, result=%4b", $time, select, a, b, result);
end
 
endmodule
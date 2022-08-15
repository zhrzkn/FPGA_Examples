module muxTest_2x1_testbench();
	reg [3:0]a;
	reg [3:0]b;
	reg select;
	wire [3:0]result;
	wire carry_out;

_4bit_2x1MUX muxTest(result,a, b, select);

initial begin
a = 4'b0000; b = 4'b1111; select = 1'b0;
#10;
a = 4'b0000; b = 4'b1111; select = 1'b1;
#10;
end
 
 
initial
begin
$monitor("time = %2d, select=%b a =%4b, b=%4b, result=%4b", $time, select, a, b, result);
end
 
endmodule
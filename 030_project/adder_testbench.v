module adder_testbench();
	reg [3:0]a;
	reg [3:0]b;
	reg carry_in;
	wire [3:0]sum;
	wire carry_out;

_4bit_adder FA4 (sum, carry_out, a, b, carry_in);

initial begin
a = 4'hf; b = 4'hf; carry_in = 1'b0;
#10;
a = 4'hf; b = 4'hf; carry_in = 1'b1;
#10;
a = 4'ha; b = 4'h0; carry_in = 1'b1;
#10;

end
 
 
initial
begin
$monitor("time = %2d, a =%4b, b=%4b, carry_in=%1b, sum=%4b, carry_out=%1b", $time, a, b, carry_in, sum, carry_out);
//$monitor("time = %2d, a =%4b, b=%4b, sum=%4b, carry_out=%1b", $time, a, b, carry_in, sum, carry_out);
end
 
endmodule
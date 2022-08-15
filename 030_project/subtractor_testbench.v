module subtractor_testbench();
	reg [3:0]a;
	reg [3:0]b;
	wire [3:0]sum;
	wire carry_out;

sub4 xxx(sum, carry_out, a, b);

initial begin
a = 4'hf; b = 4'hf; 
#10;
a = 4'hf; b = 4'hf; 
#10;
a = 4'ha; b = 4'h0; 
#10;

end
 
 
initial
begin
$monitor("time = %2d, a =%4b, b=%4b, sum=%4b, carry_out=%1b", $time, a, b, sum, carry_out);
end
 
endmodule
module xor4_testbench();
reg [3:0]a;
reg [3:0]b;
wire [3:0]result;

xor4 xxx(result,a,b);
 
initial
begin
a = 4'b0000; b = 4'b1111;
#10;
a = 4'b0101; b = 4'b1111;
#10;
a = 4'b1111; b = 4'b1111;
#10;


end

initial
begin
$monitor("time = %2d, a =%b, b=%b,  result=%b", $time, a, b, result);
end
 
endmodule
	
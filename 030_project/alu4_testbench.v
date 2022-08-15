module alu4_testbench();
	reg[1:0] ALU_selection;
	reg[3:0] a;
	reg[3:0] b;
	reg carry_in;
	wire [3:0] ALU_output;
   wire carry_out;
	
	alu4 aluTest(ALU_output,carry_out,ALU_selection,a,b,carry_in);
	
initial begin

a = 4'b0000; b = 32'b1111; ALU_selection=2'b00; carry_in = 1'b0; 
#20;
a = 4'b0000; b = 32'b1111; ALU_selection=2'b01; carry_in = 1'b0;
#20;
a = 4'b0000; b = 32'b1111; ALU_selection=2'b10; carry_in = 1'b0;
#20;
a = 4'b0000; b = 32'b1111; ALU_selection=2'b11; carry_in = 1'b0;
#20;

a = 4'b1111; b = 32'b1111; ALU_selection=2'b00; 
#20;
a = 4'b1111; b = 32'b1111; ALU_selection=2'b01; 
#20;
a = 4'b1111; b = 32'b1111; ALU_selection=2'b10; 
#20
a = 4'b1111; b = 32'b1111; ALU_selection=2'b11; 
#20;
end
 
 
initial
begin
$monitor("time = %2d, a =%4b, b=%4b, ALU_selection=%2b, ALU_output=%4b", $time, a, b, ALU_selection, ALU_output);
end
 
endmodule


module mux2 (input [3:0] in1, in0, input sel, output [3:0] out);
		
		assign out = sel ? in1 : in0;
		
endmodule 
module mux2(input [5:0] in1, in0, input sel, output [5:0] out);

	assign out = sel ? in1 : in0;

	//if (sel) then out = in1 else out = in0;

	
endmodule 
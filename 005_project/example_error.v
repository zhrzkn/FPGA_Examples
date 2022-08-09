module example_error ( input [9:0] SW,               // input tanımlarken [9:0] önce gelir
                output [9:0] LED);


   assign LED[9:5] ={3 {SW[9:0]},2'b01};   // kullanırken [9:0] sonra gelir.
	assign LED[4:0] ={SW[4:3],SW [2:0]};
	
endmodule 




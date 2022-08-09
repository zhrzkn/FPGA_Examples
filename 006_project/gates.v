module gates( input [9:0] SW,
                output [9:0] LED);
					 
  and a1(LED[0], SW[1], SW[0]);
  or  o1(LED[1], SW[1], SW[0]);
  xor x1(LED[2], SW[1], SW[0]);
  nand na1(LED[3], SW[1], SW[0]);
  nor no1(LED[4], SW[1], SW[0]);
  not n1(LED[5], SW[0]);


  assign LED[9:6] = SW[5:2]; 

endmodule 
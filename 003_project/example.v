module example( input A,B,C,
                output Q);
					 
nand na1(x,A,B);
nor  no1(y,A,B);
and  a1(Q,x,y,C);					 
  


endmodule 
module assgn ( input [9:0] SW,       // türkçe karakter kulllanma :)
                output [9:0] LED);
					 
	assign LED[9:0] = SW[9:0];   //assign atama = süreklilik sağlıyor.
	
endmodule 

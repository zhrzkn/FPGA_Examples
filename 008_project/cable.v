module cable(A,B,C,Z);

	input A,B,C;
	output Z;
	wire w1;              // Bağlantı/kablo isimlendirmesi yapıldı.
	

	myXOR x1(A,B,w1);     // Yan sekmeden açılan "file>new>verilog HDL file" myXOR isminde yeni bir modül atandı.
	myXOR x2(w1,C,Z);
	
endmodule 
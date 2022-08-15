module xor4(result,a,b);
input [3:0]a;
input [3:0]b;
output [3:0]result;

assign result[3:0] = a[3:0] ^ b[3:0];


/*genvar i;
generate
		for(i=0; i<4; i=i+1) begin: xor_operation
			xor xorinput (result[i],a[i],b[i]);			
		end
endgenerate*/
endmodule
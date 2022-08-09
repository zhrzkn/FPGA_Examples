module example( input [9:0] SW,
                output [9:0] LED);
					 
 assign LED[9:5] = {5 {1'b1}};          // Replication yani  5 ile çarparak 5 bus haline getiriyor.
 assign LED[4:0] = {3'b100,2'b01};
 
                 //  Bus'ları birleştirir  led4 ve led0 yanmış oldu..  
                 // Binary formatında 3 bitlik dedik 100 yani led4 yandı.
                 // Binary formatında 2 bitlik dedik 01  yani led0 yandı 
                 //8'b3        demek son üç 0 yani 1111 1000
					  //8'b1        sondaki      0 yani 1111 1110  
					  //{5'b01000}  5 bitlik     3. 1   yani  led3 yandı.


endmodule

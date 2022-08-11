module add_fsm(
	input go,
	input [5:0] a,
	input [5:0] b,
	input [5:0] c,
	input reset,
	input CLK,
	output reg [5:0] result);
	
	
reg [5:0] x;
reg [5:0] y;
reg [5:0] z;

localparam  s0=2'd0,
				s1=2'd1,
				s2=2'd2,
				s3=2'd3;
				s4=2'd4;
				
reg [1:0] present_state;

always@(posedge CLK)  				//her clk'ta yeni değer atamak isteniyorsa posedge kullan
	begin
	if(reset)
	  present_state<= s0;
	else
	begin
	   case(present_state)
			s0:
			  begin
			  if(go)  				//go sinyali 0'da kalsın.
				present_state<=s1;
			  end 
			s1:
			  begin
			   x<=a+b;
				present_state<=s2;
			  end 
			s2:
			  begin
			   y<= c-6'd1;
				present_state<=s3;
			  end 
			s3:
			  begin
			   y<= y+b;
				present_state<=s4;
			  end 
			/* s4:
			  begin
			   a<= z-x;
				present_state<=s5;
			  end  
			*/
			s4:
			  begin
			   result<=x+y;
				present_state<=s0;
			  end
			 
		endcase
	end
end

endmodule	
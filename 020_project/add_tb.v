module add_tb();

reg [5:0] a;
reg [5:0] b;
reg go, reset,CLK;
wire [5:0] result;

add_fsm fsm(.go(go), .a(a), .b(b), .reset(reset), .CLK(CLK), .result(result));


initial
	begin
	a <= 6'd0;
	b <= 6'd0;
	go <= 1'd0;
	reset <= 1'd1;
	CLK <= 1'd0;
	
	
	#2
	reset <= 1'd0;

	#5
	a <= 6'd2;
	b <= 6'd5;
	go <= 1'd1;
	
	#5
	go <= 1'd0;
	
	end
	
always
	begin
	#1
	CLK<= ~CLK;
	end
	
	
always
	begin
	#10
	$diplay("result: %p\n", result);
	$diplay("x: %p\n", fsm.x);
	end
	
	
	
endmodule 
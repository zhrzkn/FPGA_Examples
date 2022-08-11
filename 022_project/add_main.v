
module add_main(
	input 			go,
	input 	[5:0]	a,
	input 	[5:0]	b,
	input 	[5:0]	c,
	input				reset,
	input				CLK,
	output	[5:0] result
);

	
	wire w_enx;
	wire w_eny;
	wire w_enz;
	wire w_sa;
	wire w_sb;
	wire w_sc;
	wire w_sy;



	add_datapath data(
			.a(a),
			.b(b),
			.CLK(CLK),
			.enx(w_enx),
			.eny(w_eny),
			.enz(w_enz),
			.sa(w_sa),
			.sb(w_sb),
			.sc(w_sc),
			.sy(w_sy),
			.result(result)
	);
	
	
	

	add_control cont(
	
			.go(go),
			.reset(reset),
			.CLK(CLK),
			.enx(w_enx),
			.eny(w_eny),
			.enz(w_enz),
			.sa(w_sa),
			.sb(w_sb),
			.sc(w_sc),
			.sy(w_sy)
	
	);



endmodule

module debouncer(
	input i_clk, i_sig,
	output o_sig
	);
	reg q0 = 0, q1 = 0;
	
	assign o_sig = q0 & (~q1);
	
	always @(posedge i_clk) begin
		q0 <= i_sig;
		q1 <= q0;
	end
	
endmodule

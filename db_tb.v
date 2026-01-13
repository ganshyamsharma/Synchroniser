`timescale 1us/1ns

module tb();
	
	reg clk, inp;
	wire out;
	
	sync_debounce uut0(clk, inp, out);
	
	always #5 clk = ~clk;
	
	initial begin	
		$dumpfile("wfrm.vcd");
		$dumpvars(0, tb);
		
		clk = 0;
		inp = 0;
		#40
		inp = 1;
		#46
		inp = 0;
		#54
		inp = 1;
		#64
		inp = 0;
		#42
		inp = 1;
		#500
		$finish();		
	end

endmodule
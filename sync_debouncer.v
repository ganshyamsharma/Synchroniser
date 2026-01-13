`timescale 1us/1ns

module sync_debounce #(parameter DB_CYCLE = 30) (
	input i_clk, i_input,
	output o_signal
	);
	
	reg r_input_sync1, r_input_sync2, r_signal = 0;
	reg [$clog2(DB_CYCLE)-1 : 0] r_db_counter = 0;
	
	always @(posedge i_clk) begin
		r_input_sync1 <= i_input;
		r_input_sync2 <= r_input_sync1;
	end
	
	always @(posedge i_clk) begin		
		if(r_input_sync2 != r_signal) begin
			r_db_counter <= r_db_counter + 1'b1;
		end
		else begin
			r_db_counter <= 0;
		end

		if(r_db_counter >= DB_CYCLE) begin
			r_signal <= r_input_sync2;
			r_db_counter <= 0;
		end		
		else begin
			r_signal <= r_signal;
		end		
	end

	assign o_signal = r_signal;

endmodule
/****************************************************************************
 * Counter.sv
 ****************************************************************************/

/**
 * Module: Counter
 * 
 * TODO: Add module documentation
 */
module Counter(input logic clk,
			input logic resetn,
			output [7:0] x);
	
	always @(posedge clk or negedge resetn)
		if (!resetn)
			x <= 0;
		else
			x <= x + 1;

endmodule



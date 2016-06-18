/****************************************************************************
 * Comparator.sv
 ****************************************************************************/

/**
 * Module: Comparator
 * 
 * TODO: Add module documentation
 */
module Comparator(input logic [7:0] x,
				input logic [7:0] y,
				output logic s);
	
	always @(*)
		if (y < x)
			s <= 1'b1;
		else
			s <= 1'b0;

endmodule



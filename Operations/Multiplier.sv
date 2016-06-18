/****************************************************************************
 * Multiplier.sv
 ****************************************************************************/

/**
 * Module: Multiplier
 * 
 * TODO: Add module documentation
 */
module Multiplier(input logic a,
		input logic b,
		output logic result);
	
	always @(*)
		result <= a & b;

endmodule
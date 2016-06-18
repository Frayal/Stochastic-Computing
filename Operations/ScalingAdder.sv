/****************************************************************************
 * ScalingAdder.sv
 ****************************************************************************/

/**
 * Module: ScalingAdder
 * 
 * TODO: Add module documentation
 */
module ScalingdAdder(input logic a,
		input logic b,
		input logic c,
		output logic result);
	
	always @(*)
		result <= (~c & a) | (c & b);
	
endmodule
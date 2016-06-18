/****************************************************************************
 * ScalingSubtracter.sv
 ****************************************************************************/

/**
 * Module: ScalingSubtracter
 * 
 * TODO: Add module documentation
 */
module ScalingSubtracter(input logic a,
		input logic b,
		input logic c,
		output logic result);
	
	always @(*)
		result <= (~c & a) | (c & ~b);
		
endmodule



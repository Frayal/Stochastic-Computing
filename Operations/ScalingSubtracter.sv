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
						 input logic c,// généré par le SNG
					   	 input logic clk,
						 output logic result);
	
	always @(posedge clk)
		result <= (~c & a) | (c & ~b);
		
endmodule



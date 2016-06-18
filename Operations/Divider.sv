/****************************************************************************
 * Divider.sv
 ****************************************************************************/

/**
 * Module: Divider
 * 
 * TODO: Add module documentation
 */
module Divider(input logic a,
		input logic b,
		input logic clk,
		output logic result);
	
	always@(posedge clk)
		case ({a, b})
			'b01 : result <= 1'b0;
			'b10 : result <= 1'b1;
			'b11 : result <= !result;
		endcase
		
endmodule
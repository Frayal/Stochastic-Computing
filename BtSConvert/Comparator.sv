/****************************************************************************
 * Comparator.sv
 ****************************************************************************/

/**
 * Module: Comparator
 * 
 * TODO: Add module documentation
 */
module Comparator(input logic [7:0] bin1,
	   			  input logic [7:0] bin2,
				  input logic clk,
				  output logic st);
	
	always @(posedge clk)
	begin
		if (bin2 < bin1)
			st <= 1'b1;
		else
			st <= 1'b0;
	end
	
endmodule



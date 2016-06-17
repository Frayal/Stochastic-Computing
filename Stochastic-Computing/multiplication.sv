/****************************************************************************
 * multiplication.sv
 ****************************************************************************/

/**
 * Module: multiplication
 * 
 * TODO: Add module documentation
 */
module multiplication(		input  [8:0] nummax
							input  A,
							input  B,
							input clk,
							output  c
							output [8:0] newnummax);
							
	always@(*)
		c <= A & B;
	


endmodule



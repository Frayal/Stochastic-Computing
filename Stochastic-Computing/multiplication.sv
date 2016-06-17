/****************************************************************************
 * multiplication.sv
 ****************************************************************************/

/**
 * Module: multiplication
 * 
 * TODO: Add module documentation
 */
module multiplication(		input  [8:0] Anummax,
							input  A,
							input  [8:0] Bnummax,
							input  B,
							input clk,
							output  c,
							output [8:0] newnummax);
							
	always@(*)
		c <= A & B;
	


endmodule



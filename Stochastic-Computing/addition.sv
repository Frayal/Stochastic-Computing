/****************************************************************************
 * addition.sv
 ****************************************************************************/

/**
 * Module: addition
 * 
 * TODO: Add module documentation
 */
module addition(			input  [8:0] Anummax,
							input  a,
							input  [8:0] Bnummax,
							input  b,
							input  clkB,
							input  d
							output  c,
							output [8:0] newnummax);
	
	always@(*)
		case(d)
			1'd0 : c <= a;
			1'd1 : c <= b;
		endcase
	
		
	always @(posedge clkB)
		newnummax <= Anummax + Bnummanx;
	
endmodule



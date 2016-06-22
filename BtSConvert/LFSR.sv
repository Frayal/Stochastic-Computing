/****************************************************************************
 * LFSR.sv
 ****************************************************************************/

/**
 * Module: LFSR
 * 
 * TODO: Add module documentation
 */
module LFSR( input logic clk,
			 input logic reset,
			 output reg [7:0] lfsr);
	
	wire feedback = lfsr[7] ^ lfsr[5] ^ lfsr[4] ^ lfsr[3] ;
	
	always@(posedge clk)
	begin
		if (reset)
			lfsr <= 8'b1;
		else
		begin
			lfsr[0] <= feedback;
			lfsr[1] <= lfsr[0];
			lfsr[2] <= lfsr[1];
			lfsr[3] <= lfsr[2];
			lfsr[4] <= lfsr[3];
			lfsr[5] <= lfsr[4];
			lfsr[6] <= lfsr[5];
			lfsr[7] <= lfsr[6];
		end
	end
	
endmodule



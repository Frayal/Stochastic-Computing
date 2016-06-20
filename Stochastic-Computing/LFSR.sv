/****************************************************************************
 * LFSR.sv
 ****************************************************************************/

/**
 * Module: LFSR
 * 
 * TODO: Add module documentation
 */
module lfsr    (
		output reg[7:0]out ,
		input [7:0] data,  
		input clk,  
		input reset              
		);
  
	wire linear_feedback;
	assign linear_feedback =  (out[7] ^ out[5] ^ out[4] ^ out[3]);
  
	always @(posedge clk)
		if (reset) 
		begin
		out <= 8'b1;
		end 
		else 
		begin
		out <= {out[6], out[5], out[4], out[3], out[2], out[1], out[0], linear_feedback};
		end 
endmodule 






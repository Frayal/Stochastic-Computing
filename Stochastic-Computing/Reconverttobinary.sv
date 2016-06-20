/****************************************************************************
 * Reconverttobinary.sv
 ****************************************************************************/

/**
 * Module: Reconverttobinary
 * 
 * TODO: Add module documentation
 */
module Reconverttobinary(	input [8:0] maxnum
							input [3:0] length,
							input [(2**length)-1:0] SCnum,
							input clk,
							output [length-1:0] Bnum);
	logic[length-1:0] cmpt;
	logic[length-1:0] newnum;
	always@(posedge clk)
		while(cmpt=>0)
			newnumb <= newnumb + SCnum[cmpt];
		
		Bnum <= ((newnum)*(maxnum))/(length);
		cmpt <=(2**length)-1;
		newnum <= 0;
			


endmodule



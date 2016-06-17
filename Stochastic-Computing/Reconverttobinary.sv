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
		if(cmpt==(2**length)-1)
			Bnumber <= ((newnum)*(maxnum))/(length);
		else
			
			newnum <= newnum + SCnum[cmpt]
			cmpt <= cmpt + (length-1)'d1;
				
		


endmodule



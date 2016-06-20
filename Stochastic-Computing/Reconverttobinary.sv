/****************************************************************************
 * Reconverttobinary.sv
 ****************************************************************************/

/**
 * Module: Reconverttobinary
 * 
 * TODO: Add module documentation
 */
module Reconverttobinary(	maxnum,
							SCnum,
							clk,
							Bnum);
	localparam length = 4;
	input [7:0] maxnum,
	input [(2**length)-1:0] SCnum,
	input clk,
	output [length-1:0] Bnum);
	
	reg [length-1:0] cmpt;
	reg [length-1:0] newnum;
	
	
	always@(posedge clk)
		begin
			while(cmpt>0)
				newnumb <= newnumb + SCnum[cmpt];
			
			
			newnum <= newnnum + SCnumb[0];
			Bnum <= ((newnum)*(maxnum))/(length);
			cmpt <=(2**length)-1;
			newnum <= 0;
		end	


endmodule



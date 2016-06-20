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

localparam length=4 ; 
input [7:0] maxnum; 
input [(2**length)-1:0] SCnum;
input clk;
output reg [length-1:0] Bnum;

reg [length-1:0] cmpt;
reg [length-1:0] newnum;

always@(posedge clk)
begin
	if(cmpt==(2**length)-1)
			Bnum <= ((newnum)*(maxnum))/(length);
		else
		begin
			
			newnum <= newnum + SCnum[cmpt];
			cmpt <= cmpt + 1;
		end
				
		
end

endmodule



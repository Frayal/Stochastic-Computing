/****************************************************************************
 * Clock.sv
 ****************************************************************************/

/**
 * Module: Clock
 * 
 * Cloc allowing the system to be synchronous
 */
module Clock(output clk);
	logic clk;
	always@(*)
		begin
			#5 clk = 1;
			#5 clk = 0;
		end


endmodule



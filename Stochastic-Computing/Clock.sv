/****************************************************************************
 * Clock.sv
 ****************************************************************************/

/**
 * Module: Clock
 * 
 * Cloc allowing the system to be synchronous
 */
module Clock(output clkA);
	logic clkA;
	always@(*)
		begin
			#5 clkA = 1;
			#5 clkA = 0;
		end


endmodule



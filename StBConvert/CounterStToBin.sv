/****************************************************************************
 * Counter.sv
 ****************************************************************************/

/**
 * Module: Counter
 * 
 * TODO: Add module documentation
 */
module CounterStToBin(input logic [255:0] st,
			 		  output reg [7:0] bin);
	integer i;
	always@(st)
	begin
	bin = 0;
	for ( i = 0; i < 255; i = i + 1)
	begin
	bin = bin + st[i];
	end
	end
		
endmodule
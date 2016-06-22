/****************************************************************************
 * ConvertBinToSt.sv
 ****************************************************************************/

/**
 * Module: ConvertBinToSt
 * 
 * TODO: Add module documentation
 */
module ConvertBinToSt(	input logic [7:0] bin,
						input logic clk,
						input logic reset,
						output logic st);
	
// LFSR 8 bits
	
	reg [7:0] lfsr;
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
	
// Comparateur
	
	always@(posedge clk)
	begin
		if (lfsr < bin)
			st <= 1'b1;
		else
			st <= 1'b0;
	end

endmodule



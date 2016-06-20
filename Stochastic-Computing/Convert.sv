/****************************************************************************
 * Convert.sv
 ****************************************************************************/

/**
 * Module: Convert
 * 
 * TODO: Add module documentation
 */
module Convert(		maxnum,
					clk,
					reset,
					seed
					Bnum,
					SCnum);

	
localparam lenght = 8;	

input [7:0] seed;
input [7:0] maxnum;
input clk;
input [length-1:0] Bnum; 

output SCnum;

logic truc = 0'b0;
logic  [0:0] nextbit; 
logic [lenght-1] num;
logic [lenght-1] lfsr = seed;
logic [lenght-1] cmpt;

always @(posedge clk )
begin 
	if(reset)
		lfsr <= seed;
	else
		if(cmpt==0)
		begin 
			num <= (Bnum*(2**lenght-1))/maxnum; // put the right number to compare
			nextbit <= (lfsr[5]^lfsr[7])^(lfsr[4]^lfsr[3])+0'b1; //xor 
			lfsr <= lfsr*2 + nextbit ;
			if (num < lsfr)
			begin
				Bnum <= 1'b0;
				truc <= {truc,Bnum};
			end
			else 
			begin
				Bnum <= 1'b1;
				truc <= {truc,Bnum};
			end	
			cmpt <= cmpt + 1'b1;
		end
		else
		begin 
			nextbit <= lfsr[3]^lfsr[7]; //xor 
			lfsr <= lfsr*2 + nextbit ;
			if (num < lsfr)
			begin
				Bnum <= 1'b0;
				truc <= {truc,Bnum};
			end
			else 
			begin
				Bnum <= 1'b1;
				truc <= {truc,Bnum};
			end		
			cmpt <= cmpt + 1'b1;
		end
end
			
		
		


endmodule



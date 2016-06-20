module testbench(); 

localparam length=4 ; 
reg clk ; 
wire [7:0] maxnum ; 
reg [(2**length)-1:0] Scnum ; 
wire [length-1:0] Bnum ; 


initial
begin 
clk =0 ;
Scnum = 10 ; 
#20ns ; 
Scnum = 20 ; 
end

always@(*) 
begin
#10ns ; 
clk <= ~clk; 
end 

Reconverttobinary Reconverttobinary (maxnum, Scnum, clk, Bnum);

endmodule 

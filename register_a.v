`timescale 1ns/1ns
module register_a (x,bus,lda,clk);
input lda,clk;
input [15:0] bus;
output [15:0] x;
reg [15:0]outa;
assign x=outa;

always @(posedge clk) 
begin 
if (lda) 
begin
outa<=bus;
end
end
endmodule

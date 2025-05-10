`timescale 1ns/1ns
module adder(z,x,y);
input [15:0] x;
input [15:0] y;
output [15:0] z;
reg [15:0] out;
assign z=out;
always @(*) begin
out=x+y;
end
endmodule

`timescale 1ns/1ns
module compare(eqz,bout);
input [15:0] bout;
output eqz;
assign eqz=(bout==16'h0000);

endmodule

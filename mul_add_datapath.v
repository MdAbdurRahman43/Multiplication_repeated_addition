`timescale 1ns/1ns
module mul_add_datapath(eqz,lda,ldb,ldp,decb,clrp,data_in,clk);
input ldp,ldb,lda,clrp,decb,clk;
input [15:0] data_in;
output eqz;
wire [15:0] bus,bout,x,y,z;
 
assign bus=data_in;
register_a a(x,bus,lda,clk);
register_p p(y,z,ldp,clrp,clk);
register_b b(bout,bus,ldb,decb,clk);
adder add(z,x,y);
compare cmp(eqz,bout);

endmodule

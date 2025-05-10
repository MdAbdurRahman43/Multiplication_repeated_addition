
`timescale 1ns/1ns
module control_path_checker;
wire lda,ldb,ldp,clrp,decb,done;
reg clk,start,eqz;
mul_add_controlpath dut(lda,ldb,ldp,clrp,decb,done,eqz,clk,start);
initial begin 
clk=0;start=0;eqz=0;

end
always #5 clk=~clk;
initial begin
#2 start=1;
#30 eqz=1;

end

endmodule
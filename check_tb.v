`timescale 1ns/1ns
module check_tb;
wire [15:0] bout;
reg [15:0] bin;
reg clk,dec,ld; 
checker dut(bout,bin,ld,dec,clk);
initial begin
clk=0;
dec=0;
ld=0;
end
always #5 clk=~clk;


initial begin
#2 bin=10;
#8 ld=1;
#10 ld=0;
#10 dec=1;

end

endmodule

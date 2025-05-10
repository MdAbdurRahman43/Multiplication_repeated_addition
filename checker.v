`timescale 1ns/1ns
/*module checker(a,b);
output reg[3:0] a;
output reg [3:0] b;
initial begin
a=4;
b=5;
end
always @(*) begin
a=b;
#0 b=a;


end
endmodule
*/
/*module checker(a,b,c);
output [3:0]a;
output b,c;
wire [3:0] x,y;
assign d=1'bx && 1'bz;
assign e=1'bx&&1;
assign f=1'bx&&1'b0;
assign g=1'bz&&1'b0;
assign h=1'bz&&1'b1;
assign x=4'b001;
assign y=4'b00x1;
assign a=(x&y);
assign b=(x==y);
assign c=(x&&y);
endmodule
*/
/*module checker(din,le,q);
input din,le;
output q;
reg q;
always @(din or le) begin
if(le) begin 
q<=din;
end

end

endmodule
*/
module  checker(
    input wire clk,        // Clock signal
    input wire reset_n,   // Active low asynchronous reset signal
    output wire reset_syn // Synchronized reset output
);

    reg sync1, sync2;  // Two flip-flops to synchronize the reset signal

    // Stage 1: First flip-flop synchronizes the signal to the clock
    always @(posedge clk or negedge reset_n) begin
        if (~reset_n)
            sync1 <= 1'b0;  // Reset the signal on the active low reset
        else
            sync1 <= 1'b1;  // Otherwise, synchronize the reset signal
    end

    // Stage 2: Second flip-flop further stabilizes the signal
    always @(posedge clk) begin
        sync2 <= sync1;  // Synchronize with the clock
    end

    assign reset_syn = sync2; // Final synchronized reset output

endmodule

 
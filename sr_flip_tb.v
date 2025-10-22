`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 01:58:17 PM
// Design Name: 
// Module Name: sr_flip_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sr_tb;
reg S,R, CLK;
wire Q, QBAR;
srff dut(.q(Q), .qbar(QBAR), .s(S), .r(R), .clk(CLK)); // instantiation by
port name.
// apply test vectors
initial begin
 clk=0;
 forever #10 clk = ~clk;
end
initial begin
S= 1; R= 0;
#100; S= 0; R= 1;
#100; S= 0; R= 0;
#100; S= 1; R=1;
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 01:40:26 PM
// Design Name: 
// Module Name: sr_latch
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



module sr_flip(Q,Qbar,S,R,clk);
    output Q, Qbar;
    input S,R,clk;
    
    wire out1, out2;
    
    and A1(out1, R, clk);
    and A2(out2, S, clk);
    nor N1(Q, out1, Qbar);
    nor N2(Qbar, out2, Q);

     endmodule
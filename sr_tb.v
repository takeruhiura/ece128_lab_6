`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 01:41:51 PM
// Design Name: 
// Module Name: sr_tb
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

//this is the testbenh for the SR latch

module sr_tb();
    reg r,s;
    wire q,qbar;
    
    sr_latch DUT(.S(s), .R(r), .Q(q), .Qbar(qbar));
    
    initial
        begin
        r=0;s=0;
        #5 s=1;
        #5 s=0;
        #5 r=1;
        #5 r=0; s=1;
        #5 s=0; r=1;
        #5 r=0;
        #5 r=1; s=1;
        end
     initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
     end
endmodule

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


module sr_flip_tb();
    reg s,r,clk;
    wire q,qbar;
    
    sr_flip dut(.Q(q), .Qbar(qbar), .S(s), .R(r), .clk(clk));
    
    initial begin
        clk=0;
        forever #10 clk=~clk;
    end
    
    initial begin
        s=1;r=0;
        #10 s=0;r=1;
        #10 r=0;
        #10 s=1;r=1;
        #10 r=0; s=0;
        $stop;
        end
endmodule

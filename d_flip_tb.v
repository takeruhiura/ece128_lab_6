`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:11:15 PM
// Design Name: 
// Module Name: d_flip_tb
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


module d_flip_as_tb;
    reg d, clk, rstn;
    wire q;
    
    d_flip_as dut(.d(d), .clk(clk), .rstn(rstn), .q(q));
    
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    
    initial begin
        rstn = 0; d = 0;
        #100 rstn = 0; d = 1;
        #100 rstn = 1; d = 0;
        #100 rstn = 1; d = 1;
        #100 rstn = 0;
        
        #100;
        $finish;
    end
endmodule

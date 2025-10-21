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


module d_flip_tb;
    reg clk;
    reg d;
    reg rstn;
    reg [2:0] delay;
    
    d_flip_s dff0(.d(d), .rstn(rstn), .clk(clk), .q(q));
    
    always #10 clk=~clk;
    
    integer i;
    initial begin
        clk<=0;
        d<=0;
        rstn<=0;
        
        #15 d<=1;
        #10 rstn<=1;
        for(i=0;i<5;i=i+1) begin
            delay=$random;
            #(delay) d<=i;
        end
    end
endmodule

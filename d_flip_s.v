`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:07:36 PM
// Design Name: 
// Module Name: d_flip_s
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


module d_flip_s(
input d,
input rstn,
input clk,
output reg q
    );
    always @(posedge clk)
        if(!rstn)
            q<=0;
        else
            q<=d;
endmodule

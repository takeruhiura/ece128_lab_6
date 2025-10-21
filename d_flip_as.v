`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:08:21 PM
// Design Name: 
// Module Name: d_flip_as
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


module d_flip_as(
input d,
input rstn,
input clk,
output reg q
    );
    always @(posedge clk or negedge rstn)
        if(!rstn)
            q<=0;
        else
            q<=d;
endmodule

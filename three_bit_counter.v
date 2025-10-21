`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:40:47 PM
// Design Name: 
// Module Name: three_bit_counter
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


module three_bit_counter(
input clk,
input rstn,
output Q1,
output Q2,
output Q3

);

wire tt2;
wire tt3;

t_flip_flop num1(.clk(clk), .rstn(rstn), .t(1'b1), .q(Q1));

assign tt2 = Q1;

t_flip_flop num2(.clk(clk), .rstn(rstn), .t(tt2), .q(Q2));

assign tt3 = Q2&(Q1);

t_flip_flop num3(.clk(clk), .rstn(rstn), .t(tt3), .q(Q3));


endmodule

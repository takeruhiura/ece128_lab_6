`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:55:59 PM
// Design Name: 
// Module Name: clock_divider_tb
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


module clock_divider_tb;
reg clock_in;
wire clock_out;
clock_divider uut (.clock_in(clock_in),.clock_out(clock_out));
initial begin

clock_in = 0;

 forever #25 clock_in = ~clock_in;
end
endmodule

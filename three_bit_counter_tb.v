`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 02:46:07 PM
// Design Name: 
// Module Name: three_bit_counter_tb
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


module three_bit_counter_tb();
    reg clk,rstn;
    wire [2:0] q;
    
    three_bit_counter dut(.clk(clk), .rstn(rstn), .Q1(q[0]), .Q2(q[1]), .Q3(q[2]));
    
    initial begin
        clk=0;
        forever #10 clk=~clk;
    end
    
    initial begin
        rstn = 0;
        
        @(posedge clk);
            @(negedge clk);
            @(negedge clk);
            rstn = 1;
            #160;
            
        $stop;
    end
        
endmodule

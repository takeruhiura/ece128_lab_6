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

module sr_flip(Q, Qbar, S, R, clk);
    output reg Q;
    output Qbar;
    input S, R, clk;
   
    assign Qbar = ~Q;
   
    always @(posedge clk) begin
        case ({S, R})
            2'b00: Q <= Q;      
            2'b01: Q <= 1'b0;    
            2'b10: Q <= 1'b1;  
            2'b11: Q <= 1'bx;    
            default : Q <= Q;
        endcase
    end
endmodule



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
            2'b00: begin
                Q <= Q;
                Qbar <= ~Q;
            end
            2'b01: begin
                Q <= 1'b0;
                Qbar <= 1'b1;
            end
            2'b10: begin
                Q <= 1'b1;
                Qbar <= 1'b0;
            end
            2'b11: begin
                Q <= 1'b0;    
                Qbar <= 1'b0;  
            end
        endcase
    end
endmodule



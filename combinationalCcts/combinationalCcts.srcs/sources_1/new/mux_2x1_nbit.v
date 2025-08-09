`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 01:53:34 PM
// Design Name: 
// Module Name: mux_2x1_nbit
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


module mux_2x1_nbit
#(parameter n= 3)
(
    input [n-1:0] w1, w2,
    input s,
    output reg [n-1:0]f
    );
    
    always@(w1, w2, s)
    begin
        f = s ? w1 : w2;
    end
    
endmodule

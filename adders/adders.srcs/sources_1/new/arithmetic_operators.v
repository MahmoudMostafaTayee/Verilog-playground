`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 08:50:35 AM
// Design Name: 
// Module Name: arithmetic_operators
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


module arithmetic_operators
#(parameter n = 4)
(
    input [n-1: 0] x, y,
    output [n-1: 0] s,
    output cout,
    output overflow

    );
    
    // One way to implement cout
//    wire [n: 0] sum;
//    assign sum = x + y;
//    assign cout = sum[n];

    // Another way to implement cout
    assign {cout, s} = x + y;
    
    assign overflow = (x[n-1] & y[n-1] & ~s[n-1]) | (~x[n-1] & ~y[n-1] & s[n-1]);
endmodule

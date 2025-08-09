`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 08:17:29 AM
// Design Name: 
// Module Name: adder_subtractor
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


module adder_subtractor
#(parameter n =4)
(
    input [n-1:0] x, y,
    input select,
    output [n-1: 0] s, 
    output cout,
    output overflow
);

    wire [n-1:0] xored_y;

    generate
        genvar i;
        for(i=0; i<n; i=i+1)begin: bit
            assign xored_y[i] = select ^ y[i];
        end
    endgenerate
    ripple_carry_adder_nbit 
    #(.n(n)) 
    u_ripple_carry_adder_nbit (
        .x       (x),
        .y       (xored_y),
        .cin     (select),
        .s       (s),
        .cout    (cout)
    );
    
    assign overflow = ((x[n-1] & xored_y[n-1] & ~s[n-1]) | (~x[n-1] & ~xored_y[n-1] & s[n-1]));
endmodule

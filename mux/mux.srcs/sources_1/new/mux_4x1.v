`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 06:45:09 AM
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
    input [4:0] x,
    input [1:0] s,
    output y
);

wire [1:0] g;

mux_2x1_gate_level M0 (
    .x1(x[0]), 
    .x2(x[1]), 
    .s(s[0]),
    .y(g[0])
);

mux_2x1_data_flow_level M1 (
    .x1(x[2]), 
    .x2(x[3]), 
    .s(s[0]),
    .y(g[1])
);

mux_2x1_behavioral M2 (
    .x1(g[0]), 
    .x2(g[1]), 
    .s(s[1]),
    .y(y)
);

endmodule

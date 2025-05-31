`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 07:04:19 AM
// Design Name: 
// Module Name: ripple_carry_adder_4bit
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

module ripple_carry_adder_4bit(
    input [3:0] x, y, 
    input cin,
    output [3:0] s, 
    output cout
);


wire [2:0] g;

full_adder FA0 (
    .x(x[0]), 
    .y(y[0]), 
    .cin(cin),
    .s(s[0]), 
    .cout(g[0])
);

full_adder FA1 (
    .x(x[1]), 
    .y(y[1]), 
    .cin(g[0]),
    .s(s[1]), 
    .cout(g[1])
);

full_adder FA2 (
    .x(x[2]), 
    .y(y[2]), 
    .cin(g[1]),
    .s(s[2]), 
    .cout(g[2])
);

full_adder FA3 (
    .x(x[3]), 
    .y(y[3]), 
    .cin(g[2]),
    .s(s[3]), 
    .cout(cout)
);

endmodule

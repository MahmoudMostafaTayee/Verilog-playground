`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 07:10:20 AM
// Design Name: 
// Module Name: multi_adders
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


module multi_adders(
    // 16-bit addder
    input [15: 0] x_16, y_16,
    input cin_16,
    output [15: 0] s_16,
    output cout_16,
    
    // 35-bit addder
    input [34: 0] x_35, y_35,
    input cin_35,
    output [34: 0] s_35,
    output cout_35
);
    
    // 16-bit addder
    ripple_carry_adder_nbit #(
        .n       (16)
    ) ripple_carry_adder_16bit (
        .x       (x_16),
        .y       (y_16),
        .cin     (cin_16),
        .s       (s_16),
        .cout    (cout_16)
    );    
    
    // 35-bit addder
    ripple_carry_adder_nbit #(
        .n       (35)
    ) ripple_carry_adder_35bit (
        .x       (x_35),
        .y       (y_35),
        .cin     (cin_35),
        .s       (sV),
        .cout    (cout_35)
    );  

endmodule


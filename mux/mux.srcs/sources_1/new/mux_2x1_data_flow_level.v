`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 06:32:12 AM
// Design Name: 
// Module Name: mux_2x1_data_flow_level
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


module mux_2x1_data_flow_level(
    input x1, x2, s,
    output y
);

assign y = ~s & x1 | s & x2;

endmodule


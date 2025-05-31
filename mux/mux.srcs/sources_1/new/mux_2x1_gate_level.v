`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 06:33:19 AM
// Design Name: 
// Module Name: mux_2x1_gate_level
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


module mux_2x1_gate_level(
    input x1, x2, s,
    output y
);

    wire f1, f2;
    
    and A0 (f1, x1, ~s);
    and A1 (f2, x2, s);
    or O0 (y, f1, f2);

endmodule

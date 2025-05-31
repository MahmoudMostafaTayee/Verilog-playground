`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 06:38:03 AM
// Design Name: 
// Module Name: mux_2x1_behavioral
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


module mux_2x1_behavioral(
    input x1,
    input x2,
    input s,
    output reg y
    );
always @(*)
begin
    
    // First implementation
//    if(s)
//    begin
//        y = x2;
//    end
//    else
//    begin
//        y = x1;
//    end

    // Second implementation
    case (s)
        1: y=x2;
        0: y=x1;
    endcase
end
endmodule

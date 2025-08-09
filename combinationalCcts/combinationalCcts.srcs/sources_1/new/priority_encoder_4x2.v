`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2025 06:29:09 PM
// Design Name: 
// Module Name: priority_encoder_4x2
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


module priority_encoder_4x2(
    input [3:0] w,
    output z,
    output reg [1:0] y
    );
    
    assign z = |w; // Reduction operator.
    
    always@(w)
    begin
        // default values
        y = 2'bxx;
        
        // First implementation
//        if(w[3] == 1'b1)
//            y = 2'b11;
//        else if(w[2] == 1'b1)
//            y = 2'b10;
//        else if(w[1] == 1'b1)
//            y = 2'b01;
//        else if(w[0] == 1'b1)
//            y = 2'b00;
//        else
//            y = 2'bxx;
    // Second implementation
    casex(w)
        4'b1xxx: y=2'b11;
        4'b01xx: y=2'b10;
        4'b001x: y=2'b01;
        4'b0001: y=2'b00;
        default: y=2'bxx;
        
    endcase
    end
    
endmodule


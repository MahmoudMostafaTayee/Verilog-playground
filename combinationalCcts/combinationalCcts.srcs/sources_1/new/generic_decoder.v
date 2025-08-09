`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 06:50:46 PM
// Design Name: 
// Module Name: generic_decoder
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


module generic_decoder
    #(parameter n = 4)
    (
        input [n-1 : 0] w,
        input en,
        output reg [0 : (2 ** n) - 1] y
    );
    
    always@(w, en)
    begin
        //default values
        y = 'b0;
        
        //Logic
        if(en)
            y[w] = 1'b1;
         else
            y = 'b0;
    end
endmodule

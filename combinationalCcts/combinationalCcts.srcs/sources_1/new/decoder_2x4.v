`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 06:13:54 PM
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(
    input [1:0] w,
    input en,
    output reg [0:3] y
    );
    
    always@(w, en)
    begin
        // default values
        y = 4'b0000;
        
        // First implementation.
//        case(w)
//            2'b00:      y = 4'b1000;
//            2'b01:      y = 4'b0100;
//            2'b10:      y = 4'b0010;
//            2'b11:      y = 4'b0001;
//            default:    y = 4'b0000;           
//        endcase
    
            // Second implementation.
//            if(w == 0)
//                y[0] = 1'b1;
//            else if(w == 1)
//                y[1] = 1'b1;       
//            else if(w == 2)
//                y[2] = 1'b1; 
//            else if(w == 3)
//                y[3] = 1'b1;
//            else
//                y = 4'b0000;
                
            // Easiest implementation.
            if(en)
                y[w]  = 1'b1;           
            else
                y = 4'b0000;
            
    end
    
endmodule

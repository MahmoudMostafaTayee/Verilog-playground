`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2025 06:45:16 PM
// Design Name: 
// Module Name: priority_encoder_generic
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


module priority_encoder_generic
    #(parameter n=4)(
        input [n-1:0]w,
        output z,
        output reg [$clog2(n)-1:0]y
    );
    
    assign z = |w;
    
    integer i;
    
    always@(w)
    begin
        for(i = 0; i < n; i = i + 1)begin
            if(w[i])
                y = i;
        end
    end
    
endmodule

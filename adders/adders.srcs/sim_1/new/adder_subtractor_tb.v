`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2025 11:46:32 AM
// Design Name: 
// Module Name: adder_subtractor_tb
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


module adder_subtractor_tb(

    );
    
    //1)Declare local reg and wire identifiers.
    parameter n = 4;
    reg [n-1:0] x, y;
    reg select;
    wire[n-1: 0] s; 
    wire cout;
    wire overflow;
    
    //2) inistantiate the module under test.
    adder_subtractor
    #(.n(4)) uut
    (
        .x(x), 
        .y(y),
        .select(select),
        .s(s), 
        .cout(cout),
        .overflow(overflow)
    );
    
    //3) Specify a stopwatch to stop the simulation.
    initial
    begin
        #40 $finish;
    end
    
    //4) Generate stimuli; using initial and always.
    initial 
    begin
        select = 1'b0;
        x = 4'd5;
        y = 4'd6;
        
        #10
        select = 1'b1;
        
        #10
        x = 4'd6;
        y = -4'd3;
        
        #10
        select = 1'b0;
        x = -4'd4;
        y = -4'd5;
        
        #10;
    end
    
    //5) Display the output response; text or grphics or both.
    initial
    begin
        $monitor("time: %3d -> x: %d, y: %d, select: %1b, result: %d, cout: %1b, overflow: %1b",
        $time, x, y, select, s, cout, overflow);
    end
    
endmodule

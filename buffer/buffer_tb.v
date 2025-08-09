`timescale 1ns/1ps //simulation time + precision 

module buffer_tb;
    reg [15:0] in;
    wire [15:0] out;

    buffer uut(
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("wave.vcd");     // VCD output file for GTKWave
        $dumpvars(0, buffer_tb);   // Dump all variables in this module

        //Apply test inputs
        in = 16'h0000;
        #10 in = 16'h000F;
        #10 in = 16'h00FF;
        #10 in = 16'h0FFF;
        #10 in = 16'hFFFF;
        #10 $finish;
    end
endmodule
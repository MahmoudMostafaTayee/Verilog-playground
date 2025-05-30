`timescale 1ns/1ps //simulation time + precision 

module mux_2x1_gate_level(
    input x1, x2, s,
    output y
);

    wire f1, f2;
    and A0 (f1, x1, ~s);
    and A1 (f2, x2, s);
    or O0 (y, f1, f2);

endmodule

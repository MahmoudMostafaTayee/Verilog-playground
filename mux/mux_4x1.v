module mux_4x1(
    input [4:0] x,
    input [1:0] s,
    output y
);

wire [1:0] g;

mux_2x1_gate_level M0 (
    .x1(x[0]), 
    .x2(x[1]), 
    .s(s[0]),
    .y(g[0])
);

mux_2x1_data_flow_level M1 (
    .x1(x[2]), 
    .x2(x[3]), 
    .s(s[0]),
    .y(g[1])
);

mux_2x1_behavioral M2 (
    .x1(g[0]), 
    .x2(g[1]), 
    .s(s[1]),
    .y(y)
);

endmodule
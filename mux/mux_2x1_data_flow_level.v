module mux_2x1_data_flow_level(
    input x1, x2, s,
    output y
);

/*
assign is called continuous assignment -> if you want to assign to an always change variable.
    In verilog you have to use the word assing in case of assigning to output.
*/
assign y = ~s & x1 | s & x2;

endmodule

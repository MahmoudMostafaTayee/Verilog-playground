module adder_subtractor_nbit
#(parameter n =4)
(
    input [n-1:0] x, y,
    input cin,
    output [n-1: 0] s, 
    ouput cout
);

    wire [n-1:0] xored_y;

    generate
        genvar i;
        for(i=0; i<n; i=i+1)begin: bit
            assign xored_y[i] = cin ^ y[i];
        end
    endgenerate
    ripple_carry_adder_nbit 
    #(.n(n)) 
    u_ripple_carry_adder_nbit (
        .x       (x),
        .y       (xored_y),
        .cin     (cin),
        .s       (s),
        .cout    (cout)
    );
endmodule
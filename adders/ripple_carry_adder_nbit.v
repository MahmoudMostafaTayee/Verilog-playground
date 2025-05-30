module ripple_carry_adder_nbit
    #(parameter n = 4)
    (   
        input [n-1: 0] x, y,
        input cin,
        output [n-1: 0] s,
        output cout    
    );

    wire [n:0] c;
    assign c[0] = cin;
    assign cout = c[n];

    generate;
        genvar i;
        for (i=0; i<n; i= i+1) begin: stage
            full_adder u_full_adder (
                .x       (x[i]),
                .y       (y[i]),
                .cin     (c[i]),
                .s       (s[i]),
                .cout    (c[i+1])
            );
        end
    endgenerate
endmodule

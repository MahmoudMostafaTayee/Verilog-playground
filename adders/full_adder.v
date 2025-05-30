module full_adder(
    input x, y, cin,
    output s, cout
);

wire g0, g1, g2;
half_adder H0(
    .a(x), 
    .b(y),
    .s(g0), 
    .c(g1)
);


half_adder H1(
    .a(cin), 
    .b(g0),
    .s(s), 
    .c(g2)
);

assign cout = g1 | g2;

endmodule
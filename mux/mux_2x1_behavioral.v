module mux_2x1_behavioral(
    input x1, x2, s,
    output reg y
);

always @(*)
begin
/*
    if(s)
    begin
        y = x2;
    end
    else
    begin
        y = x1;
    end
*/
    case (s)
        1: y=x2;
        0: y=x1;
    endcase
end
endmodule
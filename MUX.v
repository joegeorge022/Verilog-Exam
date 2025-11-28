//MUX-4:1
module mux(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output y
    );
    
    wire a, b, c, d;

    and(a, i0, ~s1, ~s0);
    and(b, i1, ~s1, s0);
    and(c, i2, s1, ~s0);
    and(d, i3, s1, s0);

    or(y, a, b, c, d);

endmodule



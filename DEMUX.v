module DEMUX(
    output d0,
    output d1,
    output d2,
    output d3,
    input in,
    input s0,
    input s1
    );
    and(d0,in,(~s0),(~s1));
    and(d1,in,(~s0),s1);
    and(d2,in,s0,(~s1));
    and(d3,in,s0,s1);
endmodule

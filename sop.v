//sop: 0,1,2,5[a'c'+b'c]
//Structural Flow
module sopsf(
    input a,
    input b,
    input c,
    output y
    );
    wire d,e,f,g,h;
    not(d,a);
    not(e,c);
    not(f,b);
    and(g,d,e);
    and(h,f,c);
    or(y,g,h);
endmodule

//Data Flow
module sopdf{
    input a;
    input b;
    input c;
    output y
  );
  wire w1 =(~a)&(~c);
  wire w2 =(~b)&c;
  assign y=w1|w2;
  endmodule

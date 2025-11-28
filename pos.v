//[0,1,2,3,5,7,8,10]->(a+d').(b+d)
//StructuralFlow
module possf(
  input a,b,d;
  output y
  );
  wire e,f,g;
  not(e,d);
  or(f,a,e);
  or(g,b,d);
  and(y,f,g);
endmodule;

//Data Flow
module posdf(
  input a;
  input b;
  input d;
  output y
);
  wire w1 =a|(~d);
  wire w2 =b|d;
  assign y= w1 & w2;
endmodule

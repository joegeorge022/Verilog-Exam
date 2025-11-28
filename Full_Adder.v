//Data Flow FullAdder

module FA(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
    assign sum =a^b^c;
    assign carry = (a&b)|(a&c)|(b&c);
endmodule

//Structural Flow
module FA(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
    wire d,e,f;
    xor(d,a,b);
    xor(sum,d,c);
    and(e,a,b);
    and(f,c,d);
    or(carry,e,f);
endmodule

//Behavioural
module FA(
    input a,
    input b,
    input c,
    output reg sum,
    output reg carry
    );
    always@(a,b,c)begin
    sum = a^b^c;
    carry=(a&b)|(b&c)|(a&c);
    end
endmodule

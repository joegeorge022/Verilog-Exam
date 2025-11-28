module tff(
    input t,
    input clk,
    output reg q,
    output reg qb
    );
    initial q= 1'b0;
    always@(posedge clk)begin
    case ({t})
        1'b0: q=0;
        1'b1: q=~q;
    endcase
        qb = ~q;
    end
endmodule

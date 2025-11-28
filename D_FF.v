module dff(
    input d,
    output reg q,
    output reg qb,
    input clk
    );
    always@(posedge clk) begin
    case ({d})
        1'b0 :q=0;
        1'b1: q=1;
    endcase
        qb=~q;
    end
endmodule

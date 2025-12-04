module tff(
    input t,
    input clk,
    output reg q,
    output reg qb
    );

    initial q = 1'b0;

    always @(posedge clk) begin
        case(t)
            1'b0: q <= q;    // Hold state
            1'b1: q <= ~q;   // Toggle state
        endcase
        qb <= ~q;
    end

endmodule


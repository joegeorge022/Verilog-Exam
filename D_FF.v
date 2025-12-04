module dff(
    input d,
    input clk,
    output reg q,
    output reg qb
    );

    initial q = 1'b0;

    always @(posedge clk) begin
        q <= d;     // Store input
        qb <= ~q;
    end
endmodule

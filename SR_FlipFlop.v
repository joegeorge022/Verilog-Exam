module srff(
    input s,
    input r,
    input clk,
    output reg q,
    output reg qb
    );

    // Initialize q
    initial q = 1'b0;

    always @(posedge clk) begin
        case ({s, r})
            2'b00: q = q;       // No change
            2'b01: q = 1'b0;    // Reset
            2'b10: q = 1'b1;    // Set
            2'b11: q = 1'bx;    // Invalid condition
        endcase
        qb = ~q;                // Complement output
    end

endmodule

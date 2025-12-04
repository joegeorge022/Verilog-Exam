module ring(
    input clk,
    output reg [3:0] q = 4'b1000
    );

    always @(posedge clk) begin
        case(q)
            4'b1000: q <= 4'b0100;
            4'b0100: q <= 4'b0010;
            4'b0010: q <= 4'b0001;
            4'b0001: q <= 4'b1000;
        endcase
    end

endmodule

// ANOTHER WAY

module ring_counter(
    input clk,
    output reg [3:0] q
    );

    initial q = 4'b0001;  // Starting pattern

    always @(posedge clk) begin
        q <= {q[2:0], q[3]};  // Rotate left
    end

endmodule


module relu(
    input signed [15:0] x,
    output signed [15:0] y
);

assign y = (x > 0) ? x : 0;

endmodule
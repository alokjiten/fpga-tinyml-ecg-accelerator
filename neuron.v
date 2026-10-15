module neuron(
    input clk,
    input signed [15:0] x1,
    input signed [15:0] x2,
    input signed [15:0] w1,
    input signed [15:0] w2,
    input signed [15:0] bias,
    output reg signed [15:0] y
);

reg signed [31:0] sum;

always @(posedge clk)
begin
    sum = x1*w1 + x2*w2 + bias;

    if(sum > 0)
        y <= sum[15:0];
    else
        y <= 0;
end

endmodule
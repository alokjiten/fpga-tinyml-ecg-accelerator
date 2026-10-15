module dense_layer2(
    input clk,

    input signed [15:0] in0,
    input signed [15:0] in1,
    input signed [15:0] in2,
    input signed [15:0] in3,
    input signed [15:0] in4,
    input signed [15:0] in5,
    input signed [15:0] in6,
    input signed [15:0] in7,
    input signed [15:0] in8,
    input signed [15:0] in9,
    input signed [15:0] in10,
    input signed [15:0] in11,
    input signed [15:0] in12,
    input signed [15:0] in13,
    input signed [15:0] in14,
    input signed [15:0] in15,

    output reg signed [15:0] out0,
    output reg signed [15:0] out1,
    output reg signed [15:0] out2,
    output reg signed [15:0] out3,
    output reg signed [15:0] out4,
    output reg signed [15:0] out5,
    output reg signed [15:0] out6,
    output reg signed [15:0] out7
);

always @(posedge clk)
begin

out0 <= in0 + in1 + in2;
out1 <= in3 + in4 + in5;
out2 <= in6 + in7 + in8;
out3 <= in9 + in10 + in11;
out4 <= in12 + in13;
out5 <= in14 + in15;
out6 <= in1 + in5;
out7 <= in2 + in6;

end

endmodule
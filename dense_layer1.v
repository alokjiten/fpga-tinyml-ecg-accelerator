module dense_layer1(
    input clk,
    input signed [15:0] rr,
    input signed [15:0] energy,
    output reg signed [15:0] out0,
    output reg signed [15:0] out1,
    output reg signed [15:0] out2,
    output reg signed [15:0] out3,
    output reg signed [15:0] out4,
    output reg signed [15:0] out5,
    output reg signed [15:0] out6,
    output reg signed [15:0] out7,
    output reg signed [15:0] out8,
    output reg signed [15:0] out9,
    output reg signed [15:0] out10,
    output reg signed [15:0] out11,
    output reg signed [15:0] out12,
    output reg signed [15:0] out13,
    output reg signed [15:0] out14,
    output reg signed [15:0] out15
);

always @(posedge clk)
begin

out0  <= rr*23  + energy*132;
out1  <= rr*40  + energy*-153;
out2  <= rr*0   + energy*-3;
out3  <= rr*0   + energy*0;
out4  <= rr*90  + energy*125;
out5  <= rr*-160+ energy*142;
out6  <= rr*93  + energy*-147;
out7  <= rr*130 + energy*79;
out8  <= rr*-169+ energy*196;
out9  <= rr*60  + energy*12;
out10 <= rr*-99 + energy*-125;
out11 <= rr*11  + energy*-52;
out12 <= rr*5   + energy*1;
out13 <= rr*-5  + energy*-13;
out14 <= rr*126 + energy*-88;
out15 <= rr*-22 + energy*-62;

end

endmodule
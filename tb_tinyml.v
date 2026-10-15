`timescale 1ns/1ps

module tb_tinyml;

reg clk;
reg signed [15:0] rr;
reg signed [15:0] energy;

wire [2:0] class;

tinyml_top uut(
    .clk(clk),
    .rr(rr),
    .energy(energy),
    .class(class)
);

always #5 clk = ~clk;

initial
begin

clk = 0;

rr = 16'd293;
energy = 16'd18;

#100;

rr = 16'd284;
energy = 16'd17;

#100;

rr = 16'd358;
energy = 16'd20;

#100;

$stop;

end

endmodule
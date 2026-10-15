module output_layer(

input clk,

input signed [15:0] n0,
input signed [15:0] n1,
input signed [15:0] n2,
input signed [15:0] n3,
input signed [15:0] n4,
input signed [15:0] n5,
input signed [15:0] n6,
input signed [15:0] n7,

output reg [2:0] class

);

reg signed [15:0] max;

always @(posedge clk)
begin

max = n0;
class = 0;

if(n1 > max) begin max = n1; class = 1; end
if(n2 > max) begin max = n2; class = 2; end
if(n3 > max) begin max = n3; class = 3; end
if(n4 > max) begin max = n4; class = 4; end
if(n5 > max) begin max = n5; class = 5; end
if(n6 > max) begin max = n6; class = 6; end
if(n7 > max) begin max = n7; class = 7; end

end

endmodule
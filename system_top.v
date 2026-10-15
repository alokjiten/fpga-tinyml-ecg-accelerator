module system_top(
    input clk,
    input reset,
    output [2:0] class_out   // expose output
);

// Registers
reg [15:0] rr_reg;
reg [15:0] energy_reg;

// Internal signal
wire [2:0] class_internal;

// TinyML accelerator
tinyml_top accelerator(
    .clk(clk),
    .rr(rr_reg),
    .energy(energy_reg),
    .class(class_internal)
);

// RISC-V processor
picorv32 cpu(
    .clk(clk),
    .resetn(~reset)
);

// connect output to FPGA pin
assign class_out = class_internal;

// initialize test values
always @(posedge clk) begin
    if(reset) begin
        rr_reg <= 16'd293;
        energy_reg <= 16'd18;
    end
end

endmodule
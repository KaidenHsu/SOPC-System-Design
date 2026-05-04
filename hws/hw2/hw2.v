`timescale 1ns / 1ps

`include "defines.vh"

module hw2 (
    input clk, rst,

    input start,
    input [$clog2(`MAX_M)-1 : 0] M,
    input [$clog2(`MAX_N)-1 : 0] N,

    output finish
);

wire [`NUM_MPLIERS*`DWIDTH-1 : 0] rdata;
wire signed [2*`DWIDTH+$clog2(`NUM_MPLIERS)-1 : 0] wdata;

wire [$clog2(1*(`MAX_M/`NUM_MPLIERS)+(`MAX_M/`NUM_MPLIERS)*`MAX_N)-1 : 0] raddr;
wire [$clog2(`MAX_N)-1 : 0] waddr;

wire ren, wen;

// our vector-matrix multiplication accelerator
VMM u_vmm (
    .clk(clk), .rst(rst),

    .start(start),
    .M(M), .N(N),
    .rdata(rdata),

    .ren(ren), .wen(wen),
    .raddr(raddr), .waddr(waddr),
    .wdata(wdata),
    .finish(finish)
);

// input image storage unit
sram #(
    // bandwidth
    .DATA_WIDTH(`NUM_MPLIERS*`DWIDTH),
    // Let Z be `MAX_M/`NUM_MPLIERS
    // $clog2(1*Z+Z*`MAX_N) is the required addrress width
    .ADDR_WIDTH($clog2(1*(`MAX_M/`NUM_MPLIERS)+(`MAX_M/`NUM_MPLIERS)*`MAX_N)),
    // 1*Z+Z*`NUM_MPLIERS is the required RAM size
    .RAM_SIZE(1*(`MAX_M/`NUM_MPLIERS)+(`MAX_M/`NUM_MPLIERS)*`MAX_N),
    // vector followed by matrix
    .MEM_FILE("input_image.mem")
) u_input_image (
    .clk(clk),

    .we(1'b0), .en(ren),
    .addr(raddr),
    .data_i({(`NUM_MPLIERS*`DWIDTH){1'b0}}),
    
    .data_o(rdata)
);

// output image storage unit
sram #(
    .DATA_WIDTH(2*`DWIDTH+$clog2(`NUM_MPLIERS)),
    .ADDR_WIDTH($clog2(`MAX_N)),
    .RAM_SIZE(`MAX_N)
) u_output_image (
    .clk(clk),

    .we(wen), .en(wen),
    .addr(waddr),
    .data_i(wdata),
    
    .data_o()
);

endmodule

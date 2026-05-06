`timescale 1ns / 1ps
`include "defines.vh"

module hw2 (
    input clk, rst,
    input start,
    input [$clog2(`MAX_M)-1 : 0] M,
    input [$clog2(`MAX_N)-1 : 0] N,
    output finish,

    // AXI 控制 SRAM 的介面
    input axi_in_we,
    input axi_in_en,
    input [$clog2(1*(`MAX_M/`NUM_MPLIERS)+(`MAX_M/`NUM_MPLIERS)*`MAX_N)-1 : 0] axi_in_addr,
    input [`NUM_MPLIERS*`DWIDTH-1 : 0] axi_in_data,
    input axi_out_en,
    input [$clog2(`MAX_N)-1 : 0] axi_out_addr,
    output [2*`DWIDTH+$clog2(`NUM_MPLIERS)-1 : 0] axi_out_data
);

    wire [`NUM_MPLIERS*`DWIDTH-1 : 0] rdata_from_sram;
    wire signed [2*`DWIDTH+$clog2(`NUM_MPLIERS)-1 : 0] vmm_wdata;
    wire [$clog2(1*(`MAX_M/`NUM_MPLIERS)+(`MAX_M/`NUM_MPLIERS)*`MAX_N)-1 : 0] vmm_raddr;
    wire [$clog2(`MAX_N)-1 : 0] vmm_waddr;
    wire vmm_ren, vmm_wen;

    // 用 start 作為 MUX 切換訊號
    reg is_computing;
    always @(posedge clk or posedge rst) begin
        if (rst) is_computing <= 1'b0;
        else if (start) is_computing <= 1'b1;
        else if (finish) is_computing <= 1'b0;
    end

    VMM u_vmm (
        .clk(clk), .rst(rst),
        .start(start), .M(M), .N(N),
        .rdata(rdata_from_sram),
        .ren(vmm_ren), .wen(vmm_wen),
        .raddr(vmm_raddr), .waddr(vmm_waddr),
        .wdata(vmm_wdata),
        .finish(finish)
    );

    sram #(
        .DATA_WIDTH(`NUM_MPLIERS*`DWIDTH),
        .ADDR_WIDTH($clog2(1*(`MAX_M/`NUM_MPLIERS)+(`MAX_M/`NUM_MPLIERS)*`MAX_N)),
        .RAM_SIZE(1*(`MAX_M/`NUM_MPLIERS)+(`MAX_M/`NUM_MPLIERS)*`MAX_N),
        .MEM_FILE("") 
    ) u_input_image (
        .clk(clk),
        .we(is_computing ? 1'b0 : axi_in_we),
        .en(is_computing ? vmm_ren : axi_in_en),
        .addr(is_computing ? vmm_raddr : axi_in_addr),
        .data_i(is_computing ? {(`NUM_MPLIERS*`DWIDTH){1'b0}} : axi_in_data),
        .data_o(rdata_from_sram)
    );

    sram #(
        .DATA_WIDTH(2*`DWIDTH+$clog2(`NUM_MPLIERS)),
        .ADDR_WIDTH($clog2(`MAX_N)),
        .RAM_SIZE(`MAX_N),
        .MEM_FILE("")
    ) u_output_image (
        .clk(clk),
        .we(is_computing ? vmm_wen : 1'b0),
        .en(is_computing ? vmm_wen : axi_out_en),
        .addr(is_computing ? vmm_waddr : axi_out_addr),
        .data_i(vmm_wdata),
        .data_o(axi_out_data)
    );
endmodule
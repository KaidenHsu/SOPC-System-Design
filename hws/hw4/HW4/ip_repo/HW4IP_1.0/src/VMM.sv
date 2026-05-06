`timescale 1ns / 1ps
`include "defines.vh"

module VMM (
    input clk, rst,
    input start, 
    input [$clog2(`MAX_M)-1 : 0] M, 
    input [$clog2(`MAX_N)-1 : 0] N, 
    input [`NUM_MPLIERS*`DWIDTH-1 : 0] rdata, 

    output ren, wen,
    output reg [$clog2(1*(`MAX_M/`NUM_MPLIERS)+(`MAX_M/`NUM_MPLIERS)*`MAX_N)-1 : 0] raddr,
    output reg [$clog2(`MAX_N)-1 : 0] waddr,
    output reg signed [2*`DWIDTH+$clog2(`NUM_MPLIERS)-1 : 0] wdata,
    output finish
);

// counters
reg [$clog2(`MAX_N)-1 : 0] col_counter;
reg [$clog2(`MAX_M/`NUM_MPLIERS)-1 : 0] row_counter;
reg [$clog2(`MAX_M/`NUM_MPLIERS)-1 : 0] vec_counter;

wire signed [`NUM_MPLIERS-1 : 0][`DWIDTH-1 : 0] rdata_2d;
genvar g;
generate
    for (g = 0; g < `NUM_MPLIERS; g=g+1) begin
        assign rdata_2d[g] = rdata[g*`DWIDTH +: `DWIDTH];
    end
endgenerate

// buffers
reg [$clog2(`MAX_M)-1 : 0] M_buf;
reg [$clog2(`MAX_N)-1 : 0] N_buf;
reg signed [`MAX_M-1 : 0][`DWIDTH-1 : 0] vec;
reg signed [`MAX_M-1 : 0][`DWIDTH-1 : 0] vec_shadow;
reg signed [2*`DWIDTH+$clog2(`NUM_MPLIERS)-1 : 0] next_wdata;

integer i;

localparam S_IDLE = 0, S_WAIT_SRAM = 1, S_RD_VEC = 2, S_VMM = 3, S_OUTPUT = 4, S_DONE = 5;
reg [$clog2(6)-1 : 0] state, n_state;

always @(posedge clk, posedge rst) begin
    if (rst) state <= S_IDLE;
    else state <= n_state;
end

always @* begin
    case (state)
        S_IDLE: n_state = (start)? S_WAIT_SRAM : S_IDLE;
        S_WAIT_SRAM: n_state = S_RD_VEC;
        S_RD_VEC: n_state = (vec_counter == ($clog2(`MAX_M/`NUM_MPLIERS))'(`MAX_M/`NUM_MPLIERS-1))? S_VMM : S_RD_VEC;
        S_VMM: n_state = (row_counter == 0)? S_OUTPUT : S_VMM;
        S_OUTPUT: n_state = (col_counter == 0)? S_DONE : S_VMM;
        S_DONE: n_state = S_IDLE;
        default: n_state = S_IDLE;
    endcase
end

always @(posedge clk, posedge rst) begin
    if (rst) col_counter <= 0;
    else begin
        case (state)
            S_IDLE: col_counter <= 0;
            S_RD_VEC: col_counter <= N_buf;
            S_VMM: if (row_counter == 0) col_counter <= col_counter-1;
        endcase
    end
end

always @(posedge clk, posedge rst) begin
    if (rst) row_counter <= 0;
    else begin
        case (state)
            S_IDLE: row_counter <= 0;
            S_WAIT_SRAM: row_counter <= 2'(`MAX_M/`NUM_MPLIERS-1);
            S_RD_VEC: row_counter <= (row_counter == 0)? M_buf[$clog2(`MAX_M)-1 : $clog2(`NUM_MPLIERS)]-1 : row_counter-1;
            S_VMM: row_counter <= row_counter-1;
            S_OUTPUT: row_counter <= M_buf[$clog2(`MAX_M)-1 : $clog2(`NUM_MPLIERS)]-1;
        endcase
    end
end

always @(posedge clk, posedge rst) begin
    if (rst) vec_counter <= 0;
    else begin
        case (state)
            S_IDLE: vec_counter <= 0;
            S_WAIT_SRAM: vec_counter <= 0;
            S_RD_VEC: vec_counter <= vec_counter+1;
        endcase
    end
end

always @(posedge clk, posedge rst) begin
    if (rst) begin
        M_buf <= 0; N_buf <= 0;
    end else begin
        if (state == S_IDLE && start) begin
            M_buf <= M; N_buf <= N;
        end
    end
end

assign ren = ((state == S_RD_VEC && vec_counter < M_buf[$clog2(`MAX_M)-1 : $clog2(`NUM_MPLIERS)]) || state == S_OUTPUT);
assign wen = (state == S_OUTPUT);

always @(posedge clk, posedge rst) begin
    if (rst) raddr <= 0;
    else begin
        case (state)
            S_IDLE: raddr <= 0;
            S_WAIT_SRAM: raddr <= raddr+1;
            S_RD_VEC: if (vec_counter < M_buf[$clog2(`MAX_M)-1 : $clog2(`NUM_MPLIERS)]-1 || vec_counter == ($clog2(`MAX_M/`NUM_MPLIERS))'(`MAX_M/`NUM_MPLIERS-1)) raddr <= raddr+1;
            S_VMM: if (row_counter != 0) raddr <= raddr+1;
            S_OUTPUT: raddr <= raddr+1;
        endcase
    end
end

always @(posedge clk, posedge rst) begin
    if (rst) waddr <= 0;
    else begin
        if (state == S_IDLE) waddr <= 0;
        else if (state == S_OUTPUT) waddr <= waddr+1;
    end
end

always @(posedge clk, posedge rst) begin
    if (rst) begin
        vec <= 0; vec_shadow <= 0;
    end else begin
        case (state)
            S_IDLE: begin vec <= 0; vec_shadow <= 0; end
            S_RD_VEC: begin
                if (vec_counter < M_buf[$clog2(`MAX_M)-1 : $clog2(`NUM_MPLIERS)]) begin
                    vec <= {rdata_2d, vec[`MAX_M-1 : `NUM_MPLIERS]};
                    vec_shadow <= {rdata_2d, vec_shadow[`MAX_M-1 : `NUM_MPLIERS]};
                end else begin
                    vec <= {{`NUM_MPLIERS*`DWIDTH{1'b0}}, vec[`MAX_M-1 : `NUM_MPLIERS]};
                    vec_shadow <= {{`NUM_MPLIERS*`DWIDTH{1'b0}}, vec_shadow[`MAX_M-1 : `NUM_MPLIERS]};
                end
            end
            S_VMM: begin
                if (row_counter == 0) vec <= vec_shadow; 
                else vec <= {{`NUM_MPLIERS*`DWIDTH{1'b0}}, vec[`MAX_M-1 : `NUM_MPLIERS]};
            end
        endcase
    end
end

always @(posedge clk, posedge rst) begin
    if (rst) wdata <= 0;
    else begin
        case (state)
            S_IDLE: wdata <= 0;
            S_VMM: wdata <= wdata + next_wdata;
            S_OUTPUT: wdata <= 0;
        endcase
    end
end

always @* begin
    if (state == S_VMM) begin
        next_wdata = 0;
        for (i = 0; i < `NUM_MPLIERS; i=i+1) begin
            next_wdata = next_wdata + $signed(vec[i]) * $signed(rdata_2d[i]);
        end
    end else begin
        next_wdata = 0;
    end
end

assign finish = (state == S_DONE);
endmodule
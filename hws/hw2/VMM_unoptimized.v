`timescale 1ns / 1ps

module VMM (
    input clk, rst,

    input start, 
    input [$clog2(`MAX_M)-1 : 0] M, // M = 16, 32, 48
    input [$clog2(`MAX_N)-1 : 0] N, // N < 64
    input [`NUM_MPLIERS*`DWIDTH-1 : 0] rdata, 

    output ren, wen,
    output reg [$clog2(1*(`MAX_M/`NUM_MPLIERS)+(`MAX_M/`NUM_MPLIERS)*`MAX_N)-1 : 0] raddr,
    output reg [$clog2(`MAX_N)-1 : 0] waddr,
    output reg signed [2*`DWIDTH+$clog2(`NUM_MPLIERS)-1 : 0] wdata,
    output finish
);

// row and column counters
reg [$clog2(`MAX_N)-1 : 0] col_counter;
reg [$clog2(`MAX_M/`NUM_MPLIERS)-1 : 0] row_counter;

// buffer M, N
reg [$clog2(`MAX_M)-1 : 0] M_buf;
reg [$clog2(`MAX_N)-1 : 0] N_buf;

// buffer the vector and the relevant matrix elements
reg [`MAX_M*`DWIDTH-1 : 0] vec;

// MAC the product matrix element iteratively combinationally
reg signed [2*`DWIDTH+$clog2(`NUM_MPLIERS)-1 : 0] next_wdata;

integer i;

// FSM
localparam S_IDLE = 0;
localparam S_BUF_MN = 1;
localparam S_RD_VEC = 2;
localparam S_VMM = 3;
localparam S_OUTPUT = 4; // output and read next set of matrix elements
localparam S_DONE = 5;
reg [$clog2(6)-1 : 0] state, n_state;

always @(posedge clk, posedge rst) begin
    if (rst) state <= S_IDLE;
    else state <= n_state;
end

always @* begin
    case (state)
        S_IDLE: n_state = (start)? S_BUF_MN : S_IDLE;
        S_BUF_MN: n_state = S_RD_VEC;
        S_RD_VEC: n_state = (row_counter == 0)? S_VMM : S_RD_VEC;
        S_VMM: n_state = (row_counter == 0)? S_OUTPUT : S_VMM;
        S_OUTPUT: n_state = (col_counter == 0)? S_DONE : S_VMM;
        S_DONE: n_state = S_IDLE;
        default: n_state = S_IDLE;
    endcase
end

// col_counter
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

// row_counter
always @(posedge clk, posedge rst) begin
    if (rst) row_counter <= 0;
    else begin
        case (state)
            S_IDLE: row_counter <= 0;
            S_BUF_MN: row_counter <= M[$clog2(`MAX_M)-1 : $clog2(`NUM_MPLIERS)]-1;
            S_RD_VEC: row_counter <= (row_counter == 0)? M_buf[$clog2(`MAX_M)-1 : $clog2(`NUM_MPLIERS)]-1 : row_counter-1;
            S_VMM: row_counter <= row_counter-1;
            S_OUTPUT: row_counter <= M_buf[$clog2(`MAX_M)-1 : $clog2(`NUM_MPLIERS)]-1; // $clog2(16) = 4
        endcase
    end
end

// M_buf, N_buf
always @(posedge clk, posedge rst) begin
    if (rst) begin
        M_buf <= 0;
        N_buf <= 0;
    end else begin
        case (state)
            S_IDLE: begin
                M_buf <= 0;
                N_buf <= 0;
            end
            S_BUF_MN: begin
                M_buf <= M;
                N_buf <= N;
            end
        endcase
    end
end

// ren, wen
assign ren = (state == S_RD_VEC || state == S_OUTPUT);
assign wen = (state == S_OUTPUT);

// raddr
always @(posedge clk, posedge rst) begin
    if (rst) raddr <= 0;
    else begin
        case (state)
            S_IDLE: raddr <= 0;
            S_BUF_MN: raddr <= raddr+1;
            S_RD_VEC: raddr <= raddr+1;
            S_VMM: if (row_counter != 0) raddr <= raddr+1;
            S_OUTPUT: raddr <= raddr+1;
        endcase
    end
end

// waddr
always @(posedge clk, posedge rst) begin
    if (rst) waddr <= 0;
    else begin
        case (state)
            S_IDLE: waddr <= 0;
            S_OUTPUT: waddr <= waddr+1;
        endcase
    end
end

// vec
always @(posedge clk, posedge rst) begin
    if (rst) vec <= 0;
    else begin
        case (state)
            S_IDLE: vec <= 0;
            S_RD_VEC: vec[`NUM_MPLIERS*`DWIDTH*(32'(row_counter)+1)-1 -: `NUM_MPLIERS*`DWIDTH] <= rdata;
        endcase
    end
end

// wdata
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

// next_wdata
always @* begin
    case (state)
        S_VMM: begin
            next_wdata = 0;
            for (i = 1; i <= `NUM_MPLIERS; i=i+1) begin
                /* verilator lint_off WIDTHEXPAND */
                next_wdata = next_wdata +
                    $signed(vec[(`DWIDTH*i-1)+row_counter*`NUM_MPLIERS*`DWIDTH -: `DWIDTH]) *
                    $signed(rdata[`DWIDTH*i-1 -: `DWIDTH]);
                /* verilator lint_off WIDTHEXPAND */
            end
        end
        default: next_wdata = 0;
    endcase
end

// finish
assign finish = (state == S_DONE);

endmodule

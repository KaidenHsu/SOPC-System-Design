`timescale 1ns / 1ps

`include "defines.vh"

`define CLK_PRD 10

module hw2_tb;

reg clk = 0;
reg rst;

reg start;

// dimensions
reg [$clog2(`MAX_M)-1 : 0] M;
reg [$clog2(`MAX_N)-1 : 0] N;

wire finish;

integer i, j;
integer cycle_count = 0;
reg tb_passed = 1;

reg [2*`DWIDTH+$clog2(`NUM_MPLIERS)-1 : 0] golden [0 : 1*`MAX_N-1];

hw2 dut (
    .clk(clk), .rst(rst),

    .start(start),
    .M(M), .N(N),

    .finish(finish)
);

always #(`CLK_PRD/2) clk = ~clk;

initial #(100*`CLK_PRD) $finish;

initial begin
    $dumpfile("hw2.vcd");
    $dumpvars;

    // reset
    rst = 0;
    #(2*`CLK_PRD)
    rst = 1;
    #(2*`CLK_PRD)
    rst = 0;
    #(2*`CLK_PRD)


    $readmemh("golden.mem", golden);

    // assert start for a cycle (M, N are valid in this cycle)
    @(posedge clk)
    @(posedge clk)
    @(negedge clk)
    start = 1;
    M = `M_SIZE;
    N = `N_SIZE;
    @(negedge clk)
    start = 0;
    M = 0;
    N = 0;

    // wait for computation and count cycles
    while (!finish) begin
        @(posedge clk);
        cycle_count = cycle_count + 1;
    end

    // check result
    for (i = 0; i < 1*`N_SIZE; i=i+1) begin
        if (dut.u_output_image.RAM[i] !== golden[i]) begin
            $display ("[%0t] Mismatch found at product[0][%0d]: ans = %0d, golden = %0d",
                $time, i, $signed(dut.u_output_image.RAM[i]), $signed(golden[i]));
            
            tb_passed = 0;
        end
    end

    if (tb_passed) begin
        $display("\n");
        $display("        ----------------------------               ");
        $display("        --                        --       |\__||  ");
        $display("        --  Congratulations !!    --      / O.O  | ");
        $display("        --                        --    /_____   | ");
        $display("        --  Simulation passed!!  --   /^ ^ ^ \\  |");
        $display("        --                        --  |^ ^ ^ ^ |w| ");
        $display("        ----------------------------   \\m___m__|_|");
        $display("        VMM finished in %0d cycles", cycle_count);
        $display("\n");
    end else begin // testbench failed, print the wrong product matrix
        $display("The output image storage contains:");
        $write("[ ");
        for (i = 0; i < 1*`N_SIZE; i=i+1) begin
            $write("%d ", $signed(dut.u_output_image.RAM[i]));
        end
        $display("]");
        $display("---------------------------------");
    end

    #(3*`CLK_PRD)
    $finish;
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2026 04:23:25 PM
// Design Name: 
// Module Name: sram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sram #(
    parameter DATA_WIDTH = 8, ADDR_WIDTH = 16, RAM_SIZE = 65536,
    parameter MEM_FILE = ""
)(
    input clk,

    input we, input en,
    input  [ADDR_WIDTH-1 : 0] addr,
    input  [DATA_WIDTH-1 : 0] data_i,

    output reg [DATA_WIDTH-1 : 0] data_o
);

// Declareation of the memory cells
(* ram_style = "block" *) reg [DATA_WIDTH-1 : 0] RAM [0 : RAM_SIZE-1];

// ------------------------------------
// SRAM cell initialization
// ------------------------------------
initial begin
    if (MEM_FILE != "") begin
        $readmemh(MEM_FILE, RAM);
    end
end

// ------------------------------------
// SRAM read operation
// ------------------------------------
always @(posedge clk) begin
    if (en & we) data_o <= data_i;
    else data_o <= RAM[addr];
end

// ------------------------------------
// SRAM write operation
// ------------------------------------
always @(posedge clk) begin
    if (en & we) RAM[addr] <= data_i;
end

endmodule

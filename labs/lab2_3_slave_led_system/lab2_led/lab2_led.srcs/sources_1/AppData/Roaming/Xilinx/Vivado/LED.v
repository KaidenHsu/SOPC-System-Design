`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2026 07:43:40 PM
// Design Name: 
// Module Name: LED
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


module LED(
    input clk, reset,
    input [32-1 : 0] counter_signal,
    output reg [8-1:0] LED
);

reg [32-1 : 0] cnt;

always @(posedge clk) begin
    if (reset) cnt <= 0;
    else cnt <= (cnt == counter_signal)? 0 : cnt+1;
end

always @(posedge clk) begin
    if (reset) LED <= 8'b1000_0000;
    else begin
        if (cnt == counter_signal) LED <= {LED[0], LED[7:1]};
    end
end

endmodule

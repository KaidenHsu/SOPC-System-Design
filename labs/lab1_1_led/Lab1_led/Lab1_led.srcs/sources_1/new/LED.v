`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2026 02:31:30 PM
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


module led_round (
    input clk,
    input rst,
    output [7:0] Led
);


reg [31:0] delay_cnt; 
reg clk_500ms;        // create a 2Hz clock signal 
reg [7:0] Led_r;      // output LED pin


always @(posedge clk or posedge rst) begin
    if (rst) begin
        delay_cnt <= 32'd0;
        clk_500ms <= 1'd0;
    end else if (delay_cnt == 32'd25_000_000 - 32'd1) begin
        // clk is 10ns, so 10 * 25_000_000 = 250ms
        delay_cnt <= 32'd0;
        clk_500ms <= ~clk_500ms;
    end else begin
        delay_cnt <= delay_cnt + 1'b1;
    end
end

// complete the function of driving the 8 LEDs in a loop
always @(posedge clk_500ms or posedge rst) begin
    if (rst) Led_r <= 8'd1;
    else Led_r <= {Led_r[0], Led_r[7:1]};
end

assign Led = Led_r;

endmodule

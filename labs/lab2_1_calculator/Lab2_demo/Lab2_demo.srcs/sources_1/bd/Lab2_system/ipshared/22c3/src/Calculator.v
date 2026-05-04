module Calculator #(
    parameter DATA_BW = 16
)(
    input clk,
    input reset,
    input [DATA_BW*2-1:0] sel,
    input [DATA_BW-1:0] data_in1,
    input [DATA_BW-1:0] data_in2,
    output reg [DATA_BW*2-1:0] cal_result
);

parameter ADD = 0;
parameter SUB = 1;
parameter MUL = 2;

reg [DATA_BW*2-1:0] result;

always @(posedge clk) begin
    if (reset) cal_result <= 0;
    else begin
        case(sel)
            ADD: cal_result <= data_in1 + data_in2;
            SUB: cal_result <= data_in1 - data_in2;
            MUL: cal_result <= data_in1 * data_in2;
            default: cal_result <= 0;
        endcase
    end
end

endmodule

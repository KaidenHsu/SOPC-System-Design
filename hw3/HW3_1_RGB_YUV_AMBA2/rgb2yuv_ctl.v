`timescale 1ns / 100ps
//synopsys translate_off
//synopsys translate_on

module rgb2yuv_ctl(
  HCLK, 
  HRESETn, 
  HADDR, 
  HTRANS, 
  HWRITE, 
  HSIZE, 
  HWDATA, 
  HSELIntMem,
  HREADYin, 
  HRDATA, 
  HREADYout, 
  HRESP
);
              
input         HCLK;
input         HRESETn;
input  [31:0] HADDR;
input   [1:0] HTRANS;
input         HWRITE;
input   [2:0] HSIZE;
input  [31:0] HWDATA;
input         HSELIntMem;
input         HREADYin;

output [31:0] HRDATA;
output        HREADYout;
output  [1:0] HRESP;
reg    [31:0] HRDATA;

//------------------------------------------------------------------------------
// Default memory size and input filename settings
//------------------------------------------------------------------------------
parameter MemSize  = 16;            // Memory size in Kbytes
parameter FileName = "intram.dat"; // Input filename    

//------------------------------------------------------------------------------
//  Constant declarations
//------------------------------------------------------------------------------
// HTRANS transfer type signal encoding
`define TRN_IDLE   2'b00
`define TRN_BUSY   2'b01
`define TRN_NONSEQ 2'b10
`define TRN_SEQ    2'b11

// HSIZE transfer type signal encoding
`define SZ_BYTE 3'b000
`define SZ_HALF 3'b001
`define SZ_WORD 3'b010

// HRESP transfer response signal encoding
`define RSP_OKAY   2'b00
`define RSP_ERROR  2'b01
`define RSP_RETRY  2'b10
`define RSP_SPLIT  2'b11

reg  [31:0] HaddrReg;
wire [31:0] HaddrReg_minusbase;
reg  [ 1:0] HtransReg;
reg         HwriteReg;
reg  [ 2:0] HsizeReg;
reg         HselReg;             
reg         HREADYout;

wire ACRegEn;           
  
assign ACRegEn = HSELIntMem & HREADYin & HTRANS[1];

//control signals for ssram
reg        CEN;
reg [ 3:0] BWEN;
reg [11:0] MemAddr;

//RGB2YUV convert signal
wire [18:0] Y_tmp, U_tmp, V_tmp;
wire [ 7:0] Y_sat, U_sat, V_sat;
wire [ 7:0] Y_mem_out, U_mem_out, V_mem_out;
reg         Y_mem_wen, U_mem_wen, V_mem_wen;


//detect HRESETn and latch the bus signals
always @(negedge HRESETn or posedge HCLK) begin:latch_control_signal
  if (!HRESETn) begin
      HaddrReg  <= 32'h0000_0000;
      HtransReg <= 2'b00;
      HwriteReg <= 1'b0;
      HsizeReg  <= 3'b000;
      HselReg   <= 1'b0;
  end else begin
    if (ACRegEn) begin //need to latch the address and control signals
      HaddrReg  <= HADDR;
      HtransReg <= HTRANS;
      HwriteReg <= HWRITE;
      HsizeReg  <= HSIZE;
      HselReg   <= HSELIntMem;
    end else begin  //no need to access memory
      //HaddrReg  <= 32'h0000_0000;
      HaddrReg  <= HaddrReg;
      HtransReg <= `TRN_IDLE;
      HwriteReg <= 1'b0;
      HsizeReg  <= `SZ_WORD;
      HselReg   <= 1'b0;
    end
  end
end              
              

// generate HREADY
always @(posedge HCLK) begin
  if (ACRegEn) HREADYout <= 1'b0;
  else HREADYout <= 1'b1;  	
end	
	
assign HRESP = `RSP_OKAY;	


  

assign Y_tmp     =  ({11'd0,HWDATA[7:0]}*19'd306)  + 
                    ({11'd0,HWDATA[15:8]}*19'd603) + 
                    ({11'd0,HWDATA[23:16]}*19'd117);
                    
                    
assign U_tmp     =  ({11'd0,HWDATA[23:16]}*19'd512) -
                    ({11'd0,HWDATA[15:8]}*19'd339) - 
                    ({11'd0,HWDATA[7:0]}*19'd173);
                    
assign V_tmp     =  ({11'd0,HWDATA[7:0]}*19'd512) - 
                    ({11'd0,HWDATA[15:8]}*19'd429) -
                    ({11'd0,HWDATA[23:16]}*19'd83);  
                        
assign Y_sat     =  Y_tmp[18] ? 8'd255 : Y_tmp[17:10];

assign U_sat     =  (U_tmp[18] & ~U_tmp[17]) ? 8'b0000_0000 :                
                    (~U_tmp[18] & U_tmp[17]) ? 8'b1111_1111 : 
                    U_tmp[17:10] + 8'd128;                          //Normalize to 0~255 by add 128
                      
assign V_sat     =  (V_tmp[18] & ~V_tmp[17]) ? 8'b0000_0000 :                
                    (~V_tmp[18] & V_tmp[17]) ? 8'b1111_1111 : 
                    V_tmp[17:10] + 8'd128;                          //Normalize to 0~255 by add 128



always @ (HaddrReg) begin
    if ( ( HaddrReg[15:14] == 2'b00 ) &&
        ( HwriteReg == 1'b1)  && 
        ( HselReg   == 1'b1) )
    begin
        Y_mem_wen = 1'b0;
        U_mem_wen = 1'b0;
        V_mem_wen = 1'b0;
    end else begin
      Y_mem_wen = 1'b1;
      U_mem_wen = 1'b1;
      V_mem_wen = 1'b1;
    end
end

always @ (HaddrReg or Y_mem_out or U_mem_out or V_mem_out) begin
    case( HaddrReg[15:14] )
      2'b00: HRDATA = {24'd0, Y_mem_out};
      2'b01: HRDATA = {24'd0, Y_mem_out};
      2'b10: HRDATA = {24'd0, U_mem_out};
      2'b11: HRDATA = {24'd0, V_mem_out};
    endcase          
end

//assign HRDATA = {24'd0, U_mem_out};


                                
ssram_4096x8 Ymem_inst(
	.addr(HaddrReg[13:2]),
	.clk(HCLK),
	.din(Y_sat),
	.dout(Y_mem_out),
	.en(1'b0),
	.we(Y_mem_wen)
);

ssram_4096x8 Umem_inst(
	.addr(HaddrReg[13:2]),
	.clk(HCLK),
	.din(U_sat),
	.dout(U_mem_out),
	.en(1'b0),
	.we(U_mem_wen)
);

ssram_4096x8 Vmem_inst(
	.addr(HaddrReg[13:2]),
	.clk(HCLK),
	.din(V_sat),
	.dout(V_mem_out),
	.en(1'b0),
	.we(V_mem_wen)
);


//ssram_4096x32 U_ssram_4096x32(
//	.addr(MemAddr[11:0]),
//	.clk(HCLK),
//	.din(HWDATA),
//	.dout(HRDATA),
//	.en(1'b0),
//	.we(BWEN)
//	);

endmodule              

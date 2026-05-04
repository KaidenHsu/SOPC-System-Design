module MYIP_TOP (
   // -----------------------------
   // MUXed AHB bus
   // -----------------------------
   g_hclk_es0,
   g_hclk_es1,
   hreset_n,
   haddr,
   htrans,
   hwrite,
   hsize,
   hburst,
   hwdata,
   hrdata,
   hready,
   hresp,

   // -----------------------------
   // AHB External interface (2 Masters & 2 Slaves)
   // -----------------------------
   hbusreq_em0,
   hlock_em0,
   hgrant_em0,
   haddr_em0,
   htrans_em0,
   hwrite_em0,
   hsize_em0,
   hburst_em0,
   hwdata_em0,
   hbusreq_em1,
   hlock_em1,
   hgrant_em1,
   haddr_em1,
   htrans_em1,
   hwrite_em1,
   hsize_em1,
   hburst_em1,
   hwdata_em1,
   hsel_es0,
   hrdata_es0,
   hresp_es0,
   hreadyout_es0,
   hsel_es1,
   hrdata_es1,
   hresp_es1,
   hreadyout_es1,

   // -----------------------------
   // APB Bridge interface
   // -----------------------------
   g_pclk_es0,
   preset_n,
   penable,
   paddr,
   pwrite,
   pwdata,

   // -----------------------------
   // APB External interface (1 Slaves)
   // -----------------------------
   psel_es0,
   prdata_es0
);

//--------------------------------------------------------------------------
// A. Port Definition
//--------------------------------------------------------------------------
// MUXed AHB bus
input         g_hclk_es0;      // AHB clock for DPSRAM
input         g_hclk_es1;      // AHB clock for HDMA

input         hreset_n;        // AHB Reset, active low
input  [31:0] haddr;           // AHB address bus
input   [1:0] htrans;          // Transfer type
input         hwrite;          // Transfer direction
input   [2:0] hsize;           // Transfer size
input   [2:0] hburst;          // Transfer burst type
input  [31:0] hwdata;          // AHB write data bus
input  [31:0] hrdata;          // AHB read data bus
input         hready;          // Transfer ready
input   [1:0] hresp;           // Transfer reponse

// AHB External interface (2 Masters & 2 Slaves)
output        hbusreq_em0;
output        hlock_em0;
input         hgrant_em0;
output [31:0] haddr_em0;
output  [1:0] htrans_em0;
output        hwrite_em0;
output  [2:0] hsize_em0;
output  [2:0] hburst_em0;
output [31:0] hwdata_em0;
output        hbusreq_em1;
output        hlock_em1;
input         hgrant_em1;
output [31:0] haddr_em1;
output  [1:0] htrans_em1;
output        hwrite_em1;
output  [2:0] hsize_em1;
output  [2:0] hburst_em1;
output [31:0] hwdata_em1;

input         hsel_es0;        // Chip select for External Slave
output [31:0] hrdata_es0;      // AHB read data bus from External Slave
output        hreadyout_es0;   // Transfer ready from External Slave
output  [1:0] hresp_es0;       // Transfer response from External Slave
input         hsel_es1;        // Chip select for External Slave
output [31:0] hrdata_es1;      // AHB read data bus from External Slave
output        hreadyout_es1;   // Transfer ready from External Slave
output  [1:0] hresp_es1;       // Transfer response from External Slave

// APB Bus Interface
input         g_pclk_es0;      // APB bus clock
input         preset_n;        // APB bus reset
input         penable;         // APB ENBLE state indicator
input  [31:0] paddr;           // APB address bus
input         pwrite;          // APB read/write indicator
input  [31:0] pwdata;          // APB write data bus

// APB External interface (1 Slave)
input         psel_es0;
output [31:0] prdata_es0;

// Disable Master 1
assign hbusreq_em1 = 1'b0;
assign hlock_em1   = 1'b0;
assign haddr_em1   = 32'b0;
assign htrans_em1  = 2'b0;
assign hwrite_em1  = 1'b0;
assign hsize_em1   = 3'b0;
assign hburst_em1  = 3'b0;
assign hwdata_em1  = 32'b0;

// Disable Slave 1
assign hrdata_es1    = 32'b0;
assign hreadyout_es1 = 1'b1;
assign hresp_es1     = 2'b0;

// Disable APB Slave
assign prdata_es0 = 32'b0;

rgb2yuv_ctl U_rgb2yuv_ctl (
   .HCLK       (g_hclk_es0),
   .HRESETn    (hreset_n),
   .HADDR      (haddr),
   .HTRANS     (htrans),
   .HWRITE     (hwrite),
   .HSIZE      (hsize),
   .HWDATA     (hwdata),
   .HSELIntMem (hsel_es0),
   .HREADYin   (hready),
   .HRDATA     (hrdata_es0),
   .HREADYout  (hreadyout_es0),
   .HRESP      (hresp_es0)
);

endmodule

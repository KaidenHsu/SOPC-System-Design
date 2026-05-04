// synopsys translate_off
`timescale 1 ns/100 ps 
// synopsys translate_on

module AHBMS_Interface(
  hsel,
  hclk,
  hreset_n,
  hgrant_mx,

  // Bidirtional interface signal
  b_hready,
  b_hresp,
  b_hwrite,
  b_hsize,
  b_htrans,
  b_hburst,
  b_haddr,
  b_hdata,

  // Master interface signal
  m_hwrite,
  m_hsize,
  m_htrans,
  m_hburst,
  m_haddr,
  m_hwdata,
  m_hready,
  m_hresp,
  m_hrdata,

  // Slave interface signal
  s_hreadyout,
  s_hreadyin,
  s_hresp,
  s_hrdata,
  s_hwrite,
  s_hsize,
  s_htrans,
  s_hburst,
  s_haddr,
  s_hwdata
);

//--========================================
// Bidirectional interface signal
//--========================================
// Arbiter, Decoder, PIU control signal
input                           hgrant_mx;          // Address output enable from uPlatform PIU
input                           hsel;               // AHB slave select signal from bus decoder
// AHB bus control and data signal
input                           hclk;               // AHB bus clock
input                           hreset_n;           // AHB bus reset
inout                           b_hready;           // Ready signal from hready mux
inout   [1:0]                   b_hresp;            // AHB response signal
inout                           b_hwrite;           // AHB write strobe
inout   [1:0]                   b_hsize;            // AHB transfer size
inout   [1:0]                   b_htrans;           // AHB transfer type
inout   [2:0]                   b_hburst;           // AHB burst type signal
inout  [31:0]                   b_haddr;            // AHB address bus
inout  [31:0]                   b_hdata;            // AHB read/write data bus
//--====================================
// AHB master port control and data signal
//--====================================
// Pre-MUX
input                           m_hwrite;           // Master write strobe
input   [1:0]                   m_hsize;            // Master transfer size
input   [1:0]                   m_htrans;           // Master transfer type
input   [2:0]                   m_hburst;           // Master burst type signal
input  [31:0]                   m_haddr;            // Master address bus
input  [31:0]                   m_hwdata;           // Master write data bus
// MUXed
output                          m_hready;            // Master received slave ready signal
output  [1:0]                   m_hresp;             // Master received response signal from slave
output [31:0]                   m_hrdata;            // Master read data bus
//--======================================
// AHB slave port control and data signal
//--======================================
// Pre-MUX
input                           s_hreadyout;        // Ready signal from slave
input   [1:0]                   s_hresp;            // Response signal from slave
input  [31:0]                   s_hrdata;           // AHB read data bus
// MUXed
output                          s_hreadyin;         // Ready signal from slave
output                          s_hwrite;           // Master write strobe
output  [1:0]                   s_hsize;            // Master transfer size
output  [1:0]                   s_htrans;           // Master transfer type
output  [2:0]                   s_hburst;           // Master burst type signal
output [31:0]                   s_haddr;            // Master address bus
output [31:0]                   s_hwdata;           // Master write data bus
//--==================================================
// Signal declarations
//--==================================================
// For master part
reg                             haddr_oe;       // AHB address phase control signal bidir oe
reg                        	    hdata_oe;      // AHB data phase control signal bidir oe
// For slave part
reg                             hsel_d;               
reg                        	    b_hwrite_d;

wire                        	  hdata_oe_comb;
wire [31:0]                     hdata;



// --========================= Main Code ============================--

//--==================================================
//  Control signal generation
//--==================================================
// haddr_oe, for address phase control signal
always @ (posedge hclk or negedge hreset_n) begin
  if (!hreset_n) haddr_oe <= 1'b0;
  else begin 
    case (haddr_oe)
      1'b0: // Not current HMASTER
          if (hgrant_mx & b_hready)
              haddr_oe <= 1'b1;
      1'b1: // Is current HMASTER
          if (!hgrant_mx & b_hready)
              haddr_oe <= 1'b0;
    endcase
  end
end

assign hdata_oe_comb = (haddr_oe && m_hwrite) || (hsel && !b_hwrite);

// hdata_oe
always @ (posedge hclk or negedge hreset_n) begin
  if (!hreset_n) hdata_oe <= 1'b0;
  else if (b_hready) hdata_oe <=  hdata_oe_comb;
  else hdata_oe <=  hdata_oe;
end        

// hsel_d (_d stands for delayed)
always @(negedge hreset_n or posedge hclk) begin
  if (!hreset_n) begin
    hsel_d <= 1'b0;
    b_hwrite_d <= 1'b0;
  end else begin
    if (s_hreadyout) begin // Extend, when hready signal is LOW
      hsel_d <= hsel; 
      b_hwrite_d <= b_hwrite;
    end else begin
      hsel_d <= hsel_d; 
      b_hwrite_d <= b_hwrite_d;
    end 
  end
end         



//--==================================================
//   Signal Assignment
//--==================================================
// -- Bidiretional Signal ---
// hdata mux
assign hdata = (hsel_d && ~b_hwrite_d) ?  s_hrdata :  m_hwdata;

// Master Part
assign b_hdata  = (hdata_oe) ? hdata :  32'hzzzzzzzz;
assign b_haddr  = (haddr_oe) ? m_haddr  : 32'hzzzzzzzz;
assign b_htrans = (haddr_oe) ? m_htrans : 2'bzz;
assign b_hsize  = (haddr_oe) ? m_hsize  : 2'bzz;
assign b_hwrite = (haddr_oe) ? m_hwrite : 1'bz;
assign b_hburst = (haddr_oe) ? m_hburst : 3'bzzz;
// Slave Part
assign b_hresp  = (hsel_d) ? s_hresp : 2'bzz; 
assign b_hready = (hsel_d) ? s_hreadyout : 1'bz; 

// -- Uni-directional Signal ---
// Master unidirection signal
assign m_hready   = b_hready;
assign m_hresp    = b_hresp;
assign m_hrdata   = b_hdata;
// Slave unidirection signal
assign s_hwrite   = b_hwrite;
assign s_hsize    = b_hsize;
assign s_htrans   = b_htrans;
assign s_hburst   = b_hburst;
assign s_haddr    = b_haddr;
assign s_hwdata   = b_hdata;
assign s_hreadyin = b_hready;
// --================================= End =========================================================================--

endmodule

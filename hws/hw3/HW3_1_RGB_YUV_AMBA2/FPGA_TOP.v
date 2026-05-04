// synopsys translate_off
`timescale 1 ns / 100 ps
// synopsys translate_on

module  FPGA_TOP (
   // -----------------------------
   // AHB Bus
   // -----------------------------
   HCLK,
   HRESET_N,
   HADDR,
   HTRANS,
   HBURST,
   HWRITE,
   HSIZE,
   HDATA,
   HREADY,
   HRESP,
   HMASTER,
   HBUSREQ_EM,
   HLOCK_EM,
   HGRANT_EM,
   HSEL_ES,
   // -----------------------------
   // APB Bus
   // -----------------------------
   PCLK,
   PRESET_N,
   PADDR,
   PDATA,
   PWRITE,
   PENABLE,
   PSEL_ES0,
   // -----------------------------
   // Interrupts
   // -----------------------------
   ES0_INT,
   ES1_INT
);
                     
//--------------------------------------------------------------------------
// Port Definition
//--------------------------------------------------------------------------
// AHB bus
input          HCLK;            // AHB bus clock
input          HRESET_N;        // AHB bus reset, active LOW
inout  [31:0]  HADDR;           // AHB bus addr                       
inout  [1:0]   HTRANS;          // AHB transfer type         
inout  [2:0]   HBURST;          // AHB transfer burst type                
inout          HWRITE;          // AHB transfer direction
inout  [1:0]   HSIZE;           // AHB transfer size, up to 32-bit
inout  [31:0]  HDATA;           // AHB read/write data bus
inout          HREADY;          // AHB transfer ready
inout  [1:0]   HRESP;           // AHB transfer reponse

input  [3:0]   HMASTER;         // AHB current bus master indicator
                                    //   %Debug mode : HMASTER[3:0] (I)
                                                                        
output [1:0]   HBUSREQ_EM;      // AHB bus request
output [1:0]   HLOCK_EM;        // AHB bus lock request
input  [1:0]   HGRANT_EM;       // AHB grant owner indicator
input  [1:0]   HSEL_ES;         // AHB chip select
// APB bus
input          PCLK;            // APB bus clock
input          PRESET_N;        // APB bus reset, active LOW
input  [7:2]   PADDR;           // APB bus addr
inout  [31:0]  PDATA;           // APB read/write data
input          PWRITE;          // APB transfer direction
input          PENABLE;         // APB device enable 
input          PSEL_ES0;        // APB chip select
// Interrupt
output         ES0_INT;         // Interrupt from device 
output         ES1_INT;         // Interrupt from device 

assign         ES0_INT = 1'b0;
assign         ES1_INT = 1'b0;
   
//--------------------------------------------------------------------------
// Signal definitions
//--------------------------------------------------------------------------
// MUXed AHB signals 
wire [31:0]    haddr; 
wire [1:0]     htrans;
wire           hwrite;
wire [1:0]     hsize; 
wire [2:0]     hburst;
wire [31:0]    hwdata;
wire [31:0]    hrdata;
wire           hready;
wire [1:0]     hresp;                   

// AHB master signals               
wire [31:0]    haddr_em0;    
wire [1:0]     htrans_em0;   
wire           hwrite_em0;   
wire [2:0]     hsize_em0;    
wire [2:0]     hburst_em0;   
wire [31:0]    hwdata_em0;   
               
wire [31:0]    haddr_em1;    
wire [1:0]     htrans_em1;   
wire           hwrite_em1;   
wire [2:0]     hsize_em1;    
wire [2:0]     hburst_em1;   
wire [31:0]    hwdata_em1;   

//AHB slave signals               
wire [31:0]    hrdata_es0;   
wire [1:0]     hresp_es0;    
wire           hreadyout_es0;
               
wire [31:0]    hrdata_es1;   
wire [1:0]     hresp_es1;    
wire           hreadyout_es1;

// APB signals               
wire [31:0]    pwdata;    
wire [31:0]    prdata_es0;   


          
// ==============================================================
// Compoents Name: MYIP_TOP
// Description: Our developed IP
// ==============================================================
MYIP_TOP U_myip( 
   // MUXed AHB bus
   .g_hclk_es0        (HCLK), 
   .g_hclk_es1        (HCLK),         
   .hreset_n          (HRESET_N),
   .haddr             (haddr),         
   .htrans            (htrans),        
   .hwrite            (hwrite),        
   .hsize             ({1'b0,hsize}),             
   .hburst            (hburst),                
   .hwdata            (hwdata),        
   .hrdata            (hrdata),        
   .hready            (hready),        
   .hresp             (hresp),
   // AHB External interface (2 Masters & 2 Slaves)				
   .hbusreq_em0       (HBUSREQ_EM[0]),
   .hlock_em0         (HLOCK_EM[0]), 
   .hgrant_em0        (HGRANT_EM[0]),
   .haddr_em0         (haddr_em0), 
   .htrans_em0        (htrans_em0),
   .hwrite_em0        (hwrite_em0),
   .hsize_em0         (hsize_em0), 
   .hburst_em0        (hburst_em0),
   .hwdata_em0        (hwdata_em0),				
   .hbusreq_em1       (HBUSREQ_EM[1]),
   .hlock_em1         (HLOCK_EM[1]), 
   .hgrant_em1        (HGRANT_EM[1]),
   .haddr_em1         (haddr_em1), 
   .htrans_em1        (htrans_em1),
   .hwrite_em1        (hwrite_em1),
   .hsize_em1         (hsize_em1), 
   .hburst_em1        (hburst_em1),
   .hwdata_em1        (hwdata_em1),					
   .hsel_es0          (HSEL_ES[0]),
   .hrdata_es0        (hrdata_es0),     
   .hresp_es0         (hresp_es0),      
   .hreadyout_es0     (hreadyout_es0),                
   .hsel_es1          (HSEL_ES[1]),
   .hrdata_es1        (hrdata_es1),     
   .hresp_es1         (hresp_es1),      
   .hreadyout_es1     (hreadyout_es1),

      // APB Bridge interface
   .g_pclk_es0        (PCLK),
      .preset_n          (PRESET_N),
   .penable           (PENABLE),
   .paddr             ({24'b0,PADDR,2'b0}),       // PADDR[7:2] only, not full address range
   .pwrite            (PWRITE),
   .pwdata            (pwdata),    	
   // APB External interface (1 Slaves)
   .psel_es0          (PSEL_ES0),
   .prdata_es0        (prdata_es0)                  
); // End of EXT_TOP instantiation               
                
// ==============================================================
// Compoents Name: AHBMS_Interface
// ==============================================================
AHBMS_Interface U_ahbms_interface_0 ( // For EM0 & ES0
   .hsel              (HSEL_ES[0]),
   .hclk              (HCLK), 
   .hreset_n          (HRESET_N), 
   .hgrant_mx         (HGRANT_EM[0]),
   // Bidirectional interface signal
   .b_hready          (HREADY), 
   .b_hresp           (HRESP), 
   .b_hwrite          (HWRITE),
   .b_hsize           (HSIZE),
   .b_htrans          (HTRANS),
   .b_hburst          (HBURST),
   .b_haddr           (HADDR),
   .b_hdata           (HDATA),
   // Master interface signal
   .m_hwrite          (hwrite_em0),
   .m_hsize           (hsize_em0[1:0]),
   .m_htrans          (htrans_em0),
   .m_hburst          (hburst_em0),
   .m_haddr           (haddr_em0),
   .m_hwdata          (hwdata_em0),
   .m_hready          (hready),
   .m_hresp           (hresp),
   .m_hrdata          (hrdata),
   // Slave interface signal
   .s_hreadyout       (hreadyout_es0),
   .s_hreadyin        (hready),
   .s_hresp           (hresp_es0),
   .s_hrdata          (hrdata_es0),
   .s_hwrite          (hwrite),
   .s_hsize           (hsize),
   .s_htrans          (htrans),
   .s_hburst          (hburst),
   .s_haddr           (haddr),
   .s_hwdata          (hwdata)
);  // End of AHBMS_BI instantiation 
                  
AHBMS_Interface U_ahbms_interface_1 ( // For EM1 & ES1
   .hsel              (HSEL_ES[1]),
   .hclk              (HCLK), 
   .hreset_n          (HRESET_N), 
   .hgrant_mx         (HGRANT_EM[1]),
   // Bidirectional interface signal
   .b_hready          (HREADY), 
   .b_hresp           (HRESP), 
   .b_hwrite          (HWRITE),
   .b_hsize           (HSIZE),
   .b_htrans          (HTRANS),
   .b_hburst          (HBURST),
   .b_haddr           (HADDR),
   .b_hdata           (HDATA),
   // Master interface signal
   .m_hwrite          (hwrite_em1),
   .m_hsize           (hsize_em1[1:0]),
   .m_htrans          (htrans_em1),
   .m_hburst          (hburst_em1),
   .m_haddr           (haddr_em1),
   .m_hwdata          (hwdata_em1),
   .m_hready          (hready),
   .m_hresp           (hresp),
   .m_hrdata          (hrdata),
   // Slave interface signal
   .s_hreadyout       (hreadyout_es1),
   .s_hreadyin        (hready),
   .s_hresp           (hresp_es1),
   .s_hrdata          (hrdata_es1),
   .s_hwrite          (hwrite),
   .s_hsize           (hsize),
   .s_htrans          (htrans),
   .s_hburst          (hburst),
   .s_haddr           (haddr),
   .s_hwdata          (hwdata)
);  // End of AHBMS_BI instantiation                                     
                  
// ==============================================================
// Compoents Name: APB_Interface
// ==============================================================
APB_Interface U_apb_interface( // Bidirectional interface signal
   .pclk              (PCLK),
   .preset_n          (PRESET_N),
   .psel              (PSEL_ES0),
   .pwrite            (PWRITE),
   .penable           (PENABLE),
   .b_pdata           (PDATA), 
   // APB interface signal
   .prdata            (prdata_es0),
   .pwdata            (pwdata)
); // End of APB_BI instantiation  
                  
endmodule     
//-=================================== END ========================================================--                                              

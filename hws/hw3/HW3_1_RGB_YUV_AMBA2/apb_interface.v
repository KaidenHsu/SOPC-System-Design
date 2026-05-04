module APB_Interface(
  pclk,
  preset_n,
  psel,
  pwrite,
  penable,
  b_pdata, 
  prdata,
  pwdata
);
input           pclk;    
input           preset_n;
input           psel;    
input           pwrite;  
input           penable; 
inout   [31:0]  b_pdata;        
input   [31:0]  prdata;  
output  [31:0]  pwdata;  
                        
wire pdata_oe_comb;
reg pdata_oe;

assign pdata_oe_comb = (pwrite == 1'b0 && psel == 1'b1 && penable ==1'b0);

always @( negedge preset_n or posedge pclk ) begin
  if (!preset_n) pdata_oe <= 1'b0;
  else pdata_oe <= pdata_oe_comb;
end    

assign b_pdata = (pdata_oe) ?  prdata : 32'hzzzzzzzz;
assign pwdata = b_pdata;

endmodule

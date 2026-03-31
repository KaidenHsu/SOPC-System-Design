// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vhw2_tb.h for the primary calling header

#include "Vhw2_tb__pch.h"
#include "Vhw2_tb__Syms.h"
#include "Vhw2_tb___024root.h"

VL_INLINE_OPT VlCoroutine Vhw2_tb___024root___eval_initial__TOP__Vtiming__1(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_initial__TOP__Vtiming__1\n"); );
    // Init
    VlWide<3>/*95:0*/ __Vtemp_1;
    // Body
    vlSymsp->_vm_contextp__->dumpfile(std::string{"hw2.vcd"});
    vlSymsp->_traceDumpOpen();
    vlSelf->hw2_tb__DOT__rst = 0U;
    co_await vlSelf->__VdlySched.delay(0x4e20ULL, nullptr, 
                                       "hw2_tb.v", 
                                       45);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->hw2_tb__DOT__rst = 1U;
    co_await vlSelf->__VdlySched.delay(0x4e20ULL, nullptr, 
                                       "hw2_tb.v", 
                                       47);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->hw2_tb__DOT__rst = 0U;
    co_await vlSelf->__VdlySched.delay(0x4e20ULL, nullptr, 
                                       "hw2_tb.v", 
                                       49);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    __Vtemp_1[0U] = 0x2e6d656dU;
    __Vtemp_1[1U] = 0x6c64656eU;
    __Vtemp_1[2U] = 0x676fU;
    VL_READMEM_N(true, 12, 64, 0, VL_CVT_PACK_STR_NW(3, __Vtemp_1)
                 ,  &(vlSelf->hw2_tb__DOT__golden), 0
                 , ~0ULL);
    co_await vlSelf->__VtrigSched_hc2b181af__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge hw2_tb.clk)", 
                                                       "hw2_tb.v", 
                                                       55);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_hc2b181af__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(posedge hw2_tb.clk)", 
                                                       "hw2_tb.v", 
                                                       56);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_hc2b18262__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge hw2_tb.clk)", 
                                                       "hw2_tb.v", 
                                                       57);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->hw2_tb__DOT__start = 1U;
    vlSelf->hw2_tb__DOT__M = 0x20U;
    vlSelf->hw2_tb__DOT__N = 3U;
    co_await vlSelf->__VtrigSched_hc2b18262__0.trigger(0U, 
                                                       nullptr, 
                                                       "@(negedge hw2_tb.clk)", 
                                                       "hw2_tb.v", 
                                                       61);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->hw2_tb__DOT__start = 0U;
    vlSelf->hw2_tb__DOT__M = 0U;
    vlSelf->hw2_tb__DOT__N = 0U;
    while ((5U != (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
        co_await vlSelf->__VtrigSched_hc2b181af__0.trigger(0U, 
                                                           nullptr, 
                                                           "@(posedge hw2_tb.clk)", 
                                                           "hw2_tb.v", 
                                                           68);
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->hw2_tb__DOT__cycle_count = ((IData)(1U) 
                                            + vlSelf->hw2_tb__DOT__cycle_count);
    }
    if (VL_UNLIKELY((vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM
                     [0U] != vlSelf->hw2_tb__DOT__golden
                     [0U]))) {
        VL_WRITEF("[%0t] Mismatch found at product[0][0]: ans = %0d, golden = %0d\n",
                  64,VL_TIME_UNITED_Q(1000),-9,12,vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM
                  [0U],12,vlSelf->hw2_tb__DOT__golden
                  [0U]);
        vlSelf->hw2_tb__DOT__tb_passed = 0U;
    }
    vlSelf->hw2_tb__DOT__i = 1U;
    if (VL_UNLIKELY((vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM
                     [1U] != vlSelf->hw2_tb__DOT__golden
                     [1U]))) {
        VL_WRITEF("[%0t] Mismatch found at product[0][1]: ans = %0d, golden = %0d\n",
                  64,VL_TIME_UNITED_Q(1000),-9,12,vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM
                  [1U],12,vlSelf->hw2_tb__DOT__golden
                  [1U]);
        vlSelf->hw2_tb__DOT__tb_passed = 0U;
    }
    vlSelf->hw2_tb__DOT__i = 2U;
    if (VL_UNLIKELY((vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM
                     [2U] != vlSelf->hw2_tb__DOT__golden
                     [2U]))) {
        VL_WRITEF("[%0t] Mismatch found at product[0][2]: ans = %0d, golden = %0d\n",
                  64,VL_TIME_UNITED_Q(1000),-9,12,vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM
                  [2U],12,vlSelf->hw2_tb__DOT__golden
                  [2U]);
        vlSelf->hw2_tb__DOT__tb_passed = 0U;
    }
    vlSelf->hw2_tb__DOT__i = 3U;
    if (VL_LIKELY(vlSelf->hw2_tb__DOT__tb_passed)) {
        VL_WRITEF("\n\n        ----------------------------               \n        --                        --       |__||  \n        --  Congratulations !!    --      / O.O  | \n        --                        --    /_____   | \n        --  Simulation passed!!  --   /^ ^ ^ \\  |\n        --                        --  |^ ^ ^ ^ |w| \n        ----------------------------   \\m___m__|_|\n        VMM finished in %0d cycles\n\n\n",
                  32,vlSelf->hw2_tb__DOT__cycle_count);
    } else {
        VL_WRITEF("The output image storage contains:\n[ %5d ",
                  12,vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM
                  [0U]);
        vlSelf->hw2_tb__DOT__i = 1U;
        VL_WRITEF("%5d ",12,vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM
                  [1U]);
        vlSelf->hw2_tb__DOT__i = 2U;
        VL_WRITEF("%5d ",12,vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM
                  [2U]);
        vlSelf->hw2_tb__DOT__i = 3U;
        VL_WRITEF("]\n---------------------------------\n");
    }
    co_await vlSelf->__VdlySched.delay(0x7530ULL, nullptr, 
                                       "hw2_tb.v", 
                                       103);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_FINISH_MT("hw2_tb.v", 104, "");
    vlSelf->__Vm_traceActivity[2U] = 1U;
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vhw2_tb___024root___dump_triggers__act(Vhw2_tb___024root* vlSelf);
#endif  // VL_DEBUG

void Vhw2_tb___024root___eval_triggers__act(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, (((IData)(vlSelf->hw2_tb__DOT__clk) 
                                      & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__hw2_tb__DOT__clk__0))) 
                                     | ((IData)(vlSelf->hw2_tb__DOT__rst) 
                                        & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__hw2_tb__DOT__rst__0)))));
    vlSelf->__VactTriggered.set(1U, ((IData)(vlSelf->hw2_tb__DOT__clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__hw2_tb__DOT__clk__0))));
    vlSelf->__VactTriggered.set(2U, vlSelf->__VdlySched.awaitingCurrentTime());
    vlSelf->__VactTriggered.set(3U, ((~ (IData)(vlSelf->hw2_tb__DOT__clk)) 
                                     & (IData)(vlSelf->__Vtrigprevexpr___TOP__hw2_tb__DOT__clk__0)));
    vlSelf->__Vtrigprevexpr___TOP__hw2_tb__DOT__clk__0 
        = vlSelf->hw2_tb__DOT__clk;
    vlSelf->__Vtrigprevexpr___TOP__hw2_tb__DOT__rst__0 
        = vlSelf->hw2_tb__DOT__rst;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vhw2_tb___024root___dump_triggers__act(vlSelf);
    }
#endif
}

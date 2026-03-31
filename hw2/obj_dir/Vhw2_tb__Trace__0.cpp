// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vhw2_tb__Syms.h"


void Vhw2_tb___024root__trace_chg_0_sub_0(Vhw2_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vhw2_tb___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root__trace_chg_0\n"); );
    // Init
    Vhw2_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vhw2_tb___024root*>(voidSelf);
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vhw2_tb___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vhw2_tb___024root__trace_chg_0_sub_0(Vhw2_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY((vlSelf->__Vm_traceActivity[1U] 
                     | vlSelf->__Vm_traceActivity[2U]))) {
        bufp->chgBit(oldp+0,(vlSelf->hw2_tb__DOT__rst));
        bufp->chgBit(oldp+1,(vlSelf->hw2_tb__DOT__start));
        bufp->chgCData(oldp+2,(vlSelf->hw2_tb__DOT__M),6);
        bufp->chgCData(oldp+3,(vlSelf->hw2_tb__DOT__N),6);
        bufp->chgIData(oldp+4,(vlSelf->hw2_tb__DOT__i),32);
        bufp->chgIData(oldp+5,(vlSelf->hw2_tb__DOT__cycle_count),32);
        bufp->chgBit(oldp+6,(vlSelf->hw2_tb__DOT__tb_passed));
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[3U])) {
        bufp->chgCData(oldp+7,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter),6);
        bufp->chgCData(oldp+8,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter),2);
        bufp->chgCData(oldp+9,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter),2);
        bufp->chgCData(oldp+10,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf),6);
        bufp->chgCData(oldp+11,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__N_buf),6);
        bufp->chgWData(oldp+12,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec),256);
        bufp->chgWData(oldp+20,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow),256);
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[4U])) {
        bufp->chgBit(oldp+28,((5U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))));
        bufp->chgSData(oldp+29,(vlSelf->hw2_tb__DOT__dut__DOT__wdata),12);
        bufp->chgSData(oldp+30,(vlSelf->hw2_tb__DOT__dut__DOT__raddr),9);
        bufp->chgCData(oldp+31,(vlSelf->hw2_tb__DOT__dut__DOT__waddr),6);
        bufp->chgBit(oldp+32,((4U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))));
        bufp->chgIData(oldp+33,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__i),32);
        bufp->chgCData(oldp+34,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state),3);
    }
    bufp->chgBit(oldp+35,(vlSelf->hw2_tb__DOT__clk));
    bufp->chgQData(oldp+36,(vlSelf->hw2_tb__DOT__dut__DOT__rdata),64);
    bufp->chgBit(oldp+38,((((2U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state)) 
                            & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter) 
                               < (3U & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf) 
                                        >> 4U)))) | 
                           (4U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state)))));
    bufp->chgSData(oldp+39,(vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__data_o),12);
    bufp->chgSData(oldp+40,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata),12);
    bufp->chgCData(oldp+41,((7U & ((0U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                    ? ((IData)(vlSelf->hw2_tb__DOT__start)
                                        ? 1U : 0U) : 
                                   ((1U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                     ? 2U : ((2U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                              ? ((3U 
                                                  == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter))
                                                  ? 3U
                                                  : 2U)
                                              : ((3U 
                                                  == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                                  ? 
                                                 ((0U 
                                                   == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter))
                                                   ? 4U
                                                   : 3U)
                                                  : 
                                                 ((4U 
                                                   == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                                   ? 
                                                  ((0U 
                                                    == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter))
                                                    ? 5U
                                                    : 3U)
                                                   : 0U))))))),3);
}

void Vhw2_tb___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root__trace_cleanup\n"); );
    // Init
    Vhw2_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vhw2_tb___024root*>(voidSelf);
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[3U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[4U] = 0U;
}

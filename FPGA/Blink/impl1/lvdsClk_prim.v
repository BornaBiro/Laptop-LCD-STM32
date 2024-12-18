// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Jul 12 22:12:48 2024
//
// Verilog Description of module lvdsClk
//

module lvdsClk (CLKI, CLKFB, CLKOP) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(8[8:15])
    input CLKI /* synthesis black_box_pad_pin=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(9[16:20])
    input CLKFB;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(10[16:21])
    output CLKOP;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(11[17:22])
    
    wire CLKOP_c /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(11[17:22])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    wire CLKFB_c, scuba_vlo, VCC_net;
    
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    IB Inst1_IB (.I(CLKI), .O(buf_CLKI)) /* synthesis IO_TYPE="LVCMOS33", syn_instantiated=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(20[8:41])
    EHXPLLL PLLInst_0 (.CLKI(buf_CLKI), .CLKFB(CLKFB_c), .PHASESEL0(scuba_vlo), 
            .PHASESEL1(scuba_vlo), .PHASEDIR(scuba_vlo), .PHASESTEP(scuba_vlo), 
            .PHASELOADREG(scuba_vlo), .STDBY(scuba_vlo), .PLLWAKESYNC(scuba_vlo), 
            .RST(scuba_vlo), .ENCLKOP(scuba_vlo), .ENCLKOS(scuba_vlo), 
            .ENCLKOS2(scuba_vlo), .ENCLKOS3(scuba_vlo), .CLKOP(CLKOP_c)) /* synthesis FREQUENCY_PIN_CLKOP="336.000000", FREQUENCY_PIN_CLKI="48.000000", ICP_CURRENT="13", LPF_RESISTOR="8", syn_instantiated=1 */ ;
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 7;
    defparam PLLInst_0.CLKOP_DIV = 2;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 1;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "USERCLOCK";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    IB CLKFB_pad (.I(CLKFB), .O(CLKFB_c));   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(10[16:21])
    OB CLKOP_pad (.I(CLKOP_c), .O(CLKOP));   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(11[17:22])
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i13 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


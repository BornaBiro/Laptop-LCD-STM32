// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Jul 12 22:47:22 2024
//
// Verilog Description of module pll
//

module pll (lvdsClk_CLKFB, lvdsClk_CLKI, lvdsClk_CLKOP) /* synthesis sbp_module="true", syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/pll.v(11[8:11])
    input lvdsClk_CLKFB;   // c:/users/borna/documents/projects/fpga/blink/pll/pll.v(12[11:24])
    input lvdsClk_CLKI /* synthesis black_box_pad_pin=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/pll.v(13[11:23])
    output lvdsClk_CLKOP;   // c:/users/borna/documents/projects/fpga/blink/pll/pll.v(14[12:25])
    
    wire lvdsClk_CLKOP_c /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/pll.v(14[12:25])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    wire lvdsClk_CLKFB_c, GND_net, VCC_net;
    
    GSR GSR_INST (.GSR(VCC_net));
    VHI i12 (.Z(VCC_net));
    lvdsClk lvdsClk_inst (.lvdsClk_CLKFB_c(lvdsClk_CLKFB_c), .lvdsClk_CLKOP_c(lvdsClk_CLKOP_c), 
            .buf_CLKI(buf_CLKI), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/pll.v(17[13:93])
    OB lvdsClk_CLKOP_pad (.I(lvdsClk_CLKOP_c), .O(lvdsClk_CLKOP));   // c:/users/borna/documents/projects/fpga/blink/pll/pll.v(14[12:25])
    IB lvdsClk_CLKFB_pad (.I(lvdsClk_CLKFB), .O(lvdsClk_CLKFB_c));   // c:/users/borna/documents/projects/fpga/blink/pll/pll.v(12[11:24])
    IB Inst1_IB (.I(lvdsClk_CLKI), .O(buf_CLKI)) /* synthesis IO_TYPE="LVCMOS33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=93, LSE_LLINE=17, LSE_RLINE=17 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(20[8:41])
    VLO i4 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module lvdsClk
//

module lvdsClk (lvdsClk_CLKFB_c, lvdsClk_CLKOP_c, buf_CLKI, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input lvdsClk_CLKFB_c;
    output lvdsClk_CLKOP_c;
    input buf_CLKI;
    input GND_net;
    
    wire lvdsClk_CLKOP_c /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/pll.v(14[12:25])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    EHXPLLL PLLInst_0 (.CLKI(buf_CLKI), .CLKFB(lvdsClk_CLKFB_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(lvdsClk_CLKOP_c)) /* synthesis FREQUENCY_PIN_CLKOP="336.000000", FREQUENCY_PIN_CLKI="48.000000", ICP_CURRENT="13", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=93, LSE_LLINE=17, LSE_RLINE=17 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/pll.v(17[13:93])
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
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


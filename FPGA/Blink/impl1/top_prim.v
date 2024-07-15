// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Jul 16 00:38:30 2024
//
// Verilog Description of module top
//

module top (pllInClock, pixelClock, lcdVsync, lcdHsync, lcdDe, lvdsOutClk, 
            lvdsLine0, lvdsLine1, lvdsLine2) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[8:11])
    input pllInClock /* synthesis black_box_pad_pin=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[18:28])
    input pixelClock;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[36:46])
    input lcdVsync;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[54:62])
    input lcdHsync;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[70:78])
    input lcdDe;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[86:91])
    output lvdsOutClk;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[100:110])
    output lvdsLine0;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[119:128])
    output lvdsLine1;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[137:146])
    output lvdsLine2;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[155:164])
    
    wire pllOutClock /* synthesis SET_AS_NETWORK=pllOutClock, is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(16[12:23])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    wire lcdVsync_c, lcdHsync_c, lcdDe_c, lvdsOutClk_c, GND_net, lvdsLine2_c, 
        VCC_net;
    
    VHI i5 (.Z(VCC_net));
    parallelToLvds myParallelToLvds (.lvdsLine2_c(lvdsLine2_c), .pllOutClock(pllOutClock), 
            .lcdDe_c(lcdDe_c), .lvdsOutClk_c(lvdsOutClk_c), .lcdHsync_c(lcdHsync_c), 
            .lcdVsync_c(lcdVsync_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[18] 31[4])
    IB Inst1_IB (.I(pllInClock), .O(buf_CLKI)) /* synthesis IO_TYPE="LVCMOS33", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=4, LSE_LLINE=14, LSE_RLINE=18 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(20[8:41])
    OB lvdsLine2_pad (.I(lvdsLine2_c), .O(lvdsLine2));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[155:164])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    IB lcdDe_pad (.I(lcdDe), .O(lcdDe_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[86:91])
    IB lcdHsync_pad (.I(lcdHsync), .O(lcdHsync_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[70:78])
    OB lvdsLine1_pad (.I(GND_net), .O(lvdsLine1));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[137:146])
    lvdsClk myLvdsPll (.pllOutClock(pllOutClock), .buf_CLKI(buf_CLKI), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(14[11] 18[4])
    IB lcdVsync_pad (.I(lcdVsync), .O(lcdVsync_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[54:62])
    OB lvdsLine0_pad (.I(GND_net), .O(lvdsLine0));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[119:128])
    OB lvdsOutClk_pad (.I(lvdsOutClk_c), .O(lvdsOutClk));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[100:110])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module parallelToLvds
//

module parallelToLvds (lvdsLine2_c, pllOutClock, lcdDe_c, lvdsOutClk_c, 
            lcdHsync_c, lcdVsync_c) /* synthesis syn_module_defined=1 */ ;
    output lvdsLine2_c;
    input pllOutClock;
    input lcdDe_c;
    output lvdsOutClk_c;
    input lcdHsync_c;
    input lcdVsync_c;
    
    wire pllOutClock /* synthesis SET_AS_NETWORK=pllOutClock, is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(16[12:23])
    wire [3:0]bitCounter;   // c:/users/borna/documents/projects/fpga/blink/blink.v(47[13:23])
    wire [3:0]n21;
    
    wire bitCounter_3__N_12, n197, n196;
    wire [6:0]lvdsTest3;   // c:/users/borna/documents/projects/fpga/blink/blink.v(50[13:22])
    
    wire lvdsClock_N_14, n3;
    
    LUT4 i113_3_lut_4_lut (.A(bitCounter[1]), .B(bitCounter[0]), .C(bitCounter[2]), 
         .D(bitCounter[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(75[17:31])
    defparam i113_3_lut_4_lut.init = 16'h7f80;
    LUT4 i25_4_lut (.A(bitCounter[0]), .B(bitCounter[3]), .C(bitCounter[2]), 
         .D(bitCounter[1]), .Z(bitCounter_3__N_12)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i25_4_lut.init = 16'heccc;
    PFUMX i163 (.BLUT(n197), .ALUT(n196), .C0(bitCounter[1]), .Z(lvdsLine2_c));
    FD1S3AX lvdsTest3_i1 (.D(lcdDe_c), .CK(pllOutClock), .Q(lvdsTest3[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=31 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(59[10] 81[6])
    defparam lvdsTest3_i1.GSR = "ENABLED";
    FD1S3AX lvdsClockReg_0__21 (.D(lvdsClock_N_14), .CK(pllOutClock), .Q(lvdsOutClk_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=31 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(59[10] 81[6])
    defparam lvdsClockReg_0__21.GSR = "ENABLED";
    LUT4 i157_4_lut (.A(bitCounter[3]), .B(bitCounter[1]), .C(bitCounter[0]), 
         .D(bitCounter[2]), .Z(lvdsClock_N_14)) /* synthesis lut_function=(A+(B (D)+!B (C+!(D)))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(71[12] 73[6])
    defparam i157_4_lut.init = 16'hfebb;
    FD1S3IX bitCounter_11__i0 (.D(n3), .CK(pllOutClock), .CD(bitCounter_3__N_12), 
            .Q(bitCounter[0]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(75[17:31])
    defparam bitCounter_11__i0.GSR = "ENABLED";
    FD1S3AX lvdsTest3_i3 (.D(lcdHsync_c), .CK(pllOutClock), .Q(lvdsTest3[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=31 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(59[10] 81[6])
    defparam lvdsTest3_i3.GSR = "ENABLED";
    LUT4 lvdsTest3_0__bdd_4_lut (.A(lvdsTest3[0]), .B(bitCounter[2]), .C(bitCounter[0]), 
         .D(lvdsTest3[1]), .Z(n197)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C (D)))) */ ;
    defparam lvdsTest3_0__bdd_4_lut.init = 16'hfece;
    LUT4 i106_2_lut_3_lut (.A(bitCounter[1]), .B(bitCounter[0]), .C(bitCounter[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(75[17:31])
    defparam i106_2_lut_3_lut.init = 16'h7878;
    LUT4 i3_1_lut (.A(bitCounter[0]), .Z(n3)) /* synthesis lut_function=(!(A)) */ ;
    defparam i3_1_lut.init = 16'h5555;
    FD1S3AX lvdsTest3_i2 (.D(lcdVsync_c), .CK(pllOutClock), .Q(lvdsTest3[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=31 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(59[10] 81[6])
    defparam lvdsTest3_i2.GSR = "ENABLED";
    FD1S3IX bitCounter_11__i3 (.D(n21[3]), .CK(pllOutClock), .CD(bitCounter_3__N_12), 
            .Q(bitCounter[3]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(75[17:31])
    defparam bitCounter_11__i3.GSR = "ENABLED";
    FD1S3IX bitCounter_11__i2 (.D(n21[2]), .CK(pllOutClock), .CD(bitCounter_3__N_12), 
            .Q(bitCounter[2]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(75[17:31])
    defparam bitCounter_11__i2.GSR = "ENABLED";
    FD1S3IX bitCounter_11__i1 (.D(n21[1]), .CK(pllOutClock), .CD(bitCounter_3__N_12), 
            .Q(bitCounter[1]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(75[17:31])
    defparam bitCounter_11__i1.GSR = "ENABLED";
    LUT4 lvdsTest3_0__bdd_3_lut (.A(lvdsTest3[2]), .B(bitCounter[2]), .C(bitCounter[0]), 
         .Z(n196)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam lvdsTest3_0__bdd_3_lut.init = 16'h3e3e;
    LUT4 i99_2_lut (.A(bitCounter[1]), .B(bitCounter[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(75[17:31])
    defparam i99_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lvdsClk
//

module lvdsClk (pllOutClock, buf_CLKI, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output pllOutClock;
    input buf_CLKI;
    input GND_net;
    
    wire pllOutClock /* synthesis SET_AS_NETWORK=pllOutClock, is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(16[12:23])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    EHXPLLL PLLInst_0 (.CLKI(buf_CLKI), .CLKFB(pllOutClock), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(pllOutClock)) /* synthesis FREQUENCY_PIN_CLKOP="336.000000", FREQUENCY_PIN_CLKI="48.000000", ICP_CURRENT="13", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=4, LSE_LLINE=14, LSE_RLINE=18 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(14[11] 18[4])
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

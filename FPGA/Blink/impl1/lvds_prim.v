// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Jul 12 21:36:45 2024
//
// Verilog Description of module lvds
//

module lvds (pllInClock, lvdsOut) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[8:12])
    input pllInClock /* synthesis black_box_pad_pin=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[19:29])
    output [3:0]lvdsOut;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[44:51])
    
    
    wire GND_net, VCC_net, buf_CLKI;
    
    OB lvdsOut_pad_0 (.I(pllInClock), .O(lvdsOut[0]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[44:51])
    VHI i14 (.Z(VCC_net));
    OB lvdsOut_pad_3 (.I(GND_net), .O(lvdsOut[3]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[44:51])
    OB lvdsOut_pad_1 (.I(GND_net), .O(lvdsOut[1]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[44:51])
    OB lvdsOut_pad_2 (.I(GND_net), .O(lvdsOut[2]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[44:51])
    IB Inst1_IB (.I(pllInClock), .O(buf_CLKI)) /* synthesis IO_TYPE="LVCMOS33", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=44, LSE_LLINE=15, LSE_RLINE=15 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(20[8:41])
    GSR GSR_INST (.GSR(VCC_net));
    VLO i4 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Jul 12 21:56:06 2024
//
// Verilog Description of module parallelToLvds
//

module parallelToLvds (pllClock, pixelClock, vsync, hsync, de, lvdsOut) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[8:22])
    input pllClock;   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[29:37])
    input pixelClock;   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[45:55])
    input vsync;   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[63:68])
    input hsync;   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[76:81])
    input de;   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[89:91])
    output [2:0]lvdsOut;   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[106:113])
    
    wire pllClock_c /* synthesis is_clock=1, SET_AS_NETWORK=pllClock_c */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[29:37])
    
    wire GND_net, VCC_net, lvdsOut_c_2, lvdsOut_c;
    wire [3:0]bitCounter;   // c:/users/borna/documents/projects/fpga/blink/blink.v(22[12:22])
    
    wire n36, n37, n38, n39;
    
    VHI i71 (.Z(VCC_net));
    LUT4 i44_3_lut (.A(bitCounter[2]), .B(bitCounter[1]), .C(bitCounter[0]), 
         .Z(n36)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(34[18:32])
    defparam i44_3_lut.init = 16'h6a6a;
    LUT4 i1_2_lut (.A(bitCounter[1]), .B(bitCounter[2]), .Z(n39)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1S3IX bitCounter__i2 (.D(n36), .CK(pllClock_c), .CD(n39), .Q(bitCounter[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(32[9] 39[5])
    defparam bitCounter__i2.GSR = "ENABLED";
    FD1S3IX bitCounter__i1 (.D(n37), .CK(pllClock_c), .CD(n39), .Q(bitCounter[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(32[9] 39[5])
    defparam bitCounter__i1.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB lvdsOut_pad_0 (.I(lvdsOut_c), .O(lvdsOut[0]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[106:113])
    LUT4 i35_1_lut (.A(bitCounter[0]), .Z(n38)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(34[18:32])
    defparam i35_1_lut.init = 16'h5555;
    LUT4 i1_3_lut (.A(bitCounter[2]), .B(bitCounter[0]), .C(bitCounter[1]), 
         .Z(lvdsOut_c_2)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(42[32:42])
    defparam i1_3_lut.init = 16'h5151;
    OB lvdsOut_pad_2 (.I(lvdsOut_c_2), .O(lvdsOut[2]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[106:113])
    OB lvdsOut_pad_1 (.I(lvdsOut_c), .O(lvdsOut[1]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[106:113])
    LUT4 i1_3_lut_adj_1 (.A(bitCounter[0]), .B(bitCounter[1]), .C(bitCounter[2]), 
         .Z(lvdsOut_c)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(42[32:42])
    defparam i1_3_lut_adj_1.init = 16'h5d5d;
    FD1S3IX bitCounter__i0 (.D(n38), .CK(pllClock_c), .CD(n39), .Q(bitCounter[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(32[9] 39[5])
    defparam bitCounter__i0.GSR = "ENABLED";
    IB pllClock_pad (.I(pllClock), .O(pllClock_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[29:37])
    VLO i79 (.Z(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i37_2_lut (.A(bitCounter[1]), .B(bitCounter[0]), .Z(n37)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(34[18:32])
    defparam i37_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


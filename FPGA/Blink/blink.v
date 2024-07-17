// Main / Top module.
// Switches are for testing RGB colors.
// pllInClock and pixelClock are both RGB Pixel clocks.
// lcdVsync, lcdHsync and lcdDe are RGB/DPI/LTDC signals from the STM32.
// lvdsOutClk, lvdsLine0, lvdsLine1 and lvdsLine2 are LVDS lines to the Laptop LCD screen.
module top(input [17:0] RGBIN, input pllInClock, input lcdVsync, input lcdHsync, input lcdDe, output lvdsOutClk, output lvdsLine0, output lvdsLine1, output lvdsLine2);
  
  // Initialize PLL inside FPGA. Ref. clock is RGB (DPI) Pixel Clock.
  lvdsClk myLvdsPll (
    .CLKI(pllInClock),
    .CLKOP(pllOutClock),
    .CLKFB(pllOutClock)
  );

  // Instantiate parallelToLvds module. This module is doing all convertion from RGB (DPI/LTDC) to LVDS.
  parallelToLvds myParallelToLvds (
	.rgbIn(RGBIN),
    .lvdsInputClock(pllOutClock),
    .vsync(lcdVsync),
    .hsync(lcdHsync),
    .de(lcdDe),
    .lvdsOut1(lvdsLine0),
	.lvdsOut2(lvdsLine1),
	.lvdsOut3(lvdsLine2),
	.lvdsClock(lvdsOutClk)
  );

endmodule

module parallelToLvds(
	input [17:0] rgbIn,
	input lvdsInputClock,
	input vsync,
	input hsync,
	input de,
	output lvdsOut1,
	output lvdsOut2,
	output lvdsOut3,
	output lvdsClock
);

	
	reg [3:0] bitCounter = 0;
	reg [6:0] lvdsTest1 = 7'b0000000;
	reg [6:0] lvdsTest2 = 7'b0000000;
	reg [6:0] lvdsTest3 = 7'b0000000;
	reg lvdsClockReg = 1'b0;

	assign lvdsOut1 = lvdsTest1[bitCounter];
	assign lvdsOut2 = lvdsTest2[bitCounter];
	assign lvdsOut3 = lvdsTest3[bitCounter];
	assign lvdsClock = lvdsClockReg;
	
	always @ (posedge lvdsInputClock) begin
		lvdsTest3[0] <= de & 1;
		lvdsTest3[1] <= vsync & 1;
		lvdsTest3[2] <= hsync & 1;
		
		// Red color:
		lvdsTest1[6] <= rgbIn[0];   // R0
		lvdsTest1[5] <= rgbIn[1];   // R1
		lvdsTest1[4] <= rgbIn[2];   // R2
		lvdsTest1[3] <= rgbIn[3];   // R3
		lvdsTest1[2] <= rgbIn[4];   // R4
		lvdsTest1[1] <= rgbIn[5];   // R5
		
		// Green color:
		lvdsTest1[0] <= rgbIn[6];   // G0
		lvdsTest2[6] <= rgbIn[7];   // G1
		lvdsTest2[5] <= rgbIn[8];   // G2
		lvdsTest2[4] <= rgbIn[9];   // G3
		lvdsTest2[3] <= rgbIn[10];  // G4
		lvdsTest2[2] <= rgbIn[11];  // G5
		
		// Blue Color:
		lvdsTest2[1] <= rgbIn[12];  // B0
		lvdsTest2[0] <= rgbIn[13];  // B1
		lvdsTest3[6] <= rgbIn[14];  // B2
		lvdsTest3[5] <= rgbIn[15];  // B3
		lvdsTest3[4] <= rgbIn[16];  // B4
		lvdsTest3[3] <= rgbIn[17];  // B5

		if (bitCounter > 1 && bitCounter < 5) begin
			lvdsClockReg = 0;
		end else begin
			lvdsClockReg = 1;
		end
	  
		bitCounter = bitCounter + 1;
		if ((bitCounter > 6)) begin
			bitCounter = 0;
		end
	end
endmodule
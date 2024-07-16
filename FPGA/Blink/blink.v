// Main / Top module.
// Switches are for testing RGB colors.
// pllInClock and pixelClock are both RGB Pixel clocks.
// lcdVsync, lcdHsync and lcdDe are RGB/DPI/LTDC signals from the STM32.
// lvdsOutClk, lvdsLine0, lvdsLine1 and lvdsLine2 are LVDS lines to the Laptop LCD screen.
module top(input [7:0] RGBIN, input pllInClock, input pixelClock, input lcdVsync, input lcdHsync, input lcdDe, output lvdsOutClk, output lvdsLine0, output lvdsLine1, output lvdsLine2);
  
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
    .pixelClock(pixelClock),
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
	input [7:0] rgbIn,
	input lvdsInputClock,
	input pixelClock,
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
	reg [0:0] lvdsClockReg = 0;

	assign lvdsOut1 = lvdsTest1[bitCounter];
	assign lvdsOut2 = lvdsTest2[bitCounter];
	assign lvdsOut3 = lvdsTest3[bitCounter];
	assign lvdsClock = lvdsClockReg;

	always @ (posedge lvdsInputClock) begin
		lvdsTest3[0] <= de & 1;
		lvdsTest3[1] <= vsync & 1;
		lvdsTest3[2] <= hsync & 1;
		
		//if (rgbTest[0] == 1) begin
		//	lvdsTest1[6:1] <= 6'b111111;
		//end else begin
		//	lvdsTest1[6:1] <= 6'b000000;
		//end
		
		//if (rgbTest[1] == 1) begin
		//	lvdsTest2[6:2] <= 5'b11111;
		//	lvdsTest1[0] <= 1;
		//end else begin
		//	lvdsTest2[6:2] <= 5'b00000;
		//	lvdsTest1[0] <= 0;
		//end
		
		//if (rgbTest[2] == 1) begin
		//	lvdsTest3[6:3] <= 4'b1111;
		//	lvdsTest2[1:0] <= 2'b11;
		//end else begin
		//	lvdsTest3[6:3] <= 4'b0000;
		//	lvdsTest2[1:0] <= 2'b00;
		//end

		lvdsTest1[3] <= rgbIn[0];
		lvdsTest1[2] <= rgbIn[1];
		lvdsTest1[1] <= rgbIn[2]; 
		lvdsTest2[3] <= rgbIn[3];
		lvdsTest2[2] <= rgbIn[4];
		lvdsTest3[5] <= rgbIn[5];
		lvdsTest3[4] <= rgbIn[6];
		lvdsTest3[3] <= rgbIn[7];


		if (bitCounter > 1 && bitCounter < 5) begin
			lvdsClockReg <= 0;
		end else begin
			lvdsClockReg <= 1;
		end
	  
		bitCounter <= bitCounter + 1;
		if (bitCounter > 6) begin
			bitCounter <= 0;
		end
	end
endmodule
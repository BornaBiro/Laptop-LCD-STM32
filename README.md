# Laptop-LCD-STM32
My little experiment trying to reuse old laptop LCD for some STM32 project.

<p align="center">
  <img src="https://raw.githubusercontent.com/BornaBiro/Laptop-LCD-STM32/master/extras/images/mainImage.jpg">
</p>

# NOTE before proceeding!

This is just an experiment and that being said, use it on your own risk! I'm not guilty if you set your house on fire, hurt yourself (or someone else) or something like that.

# About the project
The main purpose of this project is to try to reuse old laptop LCD and drive it with STM32. The main reason behind this is to prove that reusing old LCD is not impossible nor it's complicated.

# Structure
- <u>**Docs**</u> - All documentation about this project
- <u>**FPGA**</u> - FPGA project code (used to convert RGB666/RGB565 into LVDS, more on that later)
- <u>**Hardware**</u> - Hardware related stuff (PCBs, Schematics, etc)
- <u>**STM32**</u> - Code for Nucleo-H743ZI2 board
- <u>**extras**</u> - All other stuff that are not strictly code related (images, notes etc)


### Docs
Self explanatory, documentation of this project. Need to add more stuff when I edit them.

### FPGA
All project files for the FPGA IDE. FPGA used in this project is [ULX3S board](https://www.crowdsupply.com/radiona/ulx3s). Board is based around Lattice ECP5 Series, LFE5U-12F-6BG381C. Used Toolchain is Lattice Diamond with Lattice LSE as main Synthesis tool. Used verion of the Lattice Diamond is 3.13. FPGA is not strictly neccessery here, everything can be replaced by one of these ICs [DS90C387, DS90CF388](https://www.ti.com/lit/ds/symlink/ds90cf388.pdf), [DS90C385A](https://www.ti.com/lit/ds/symlink/ds90c385a.pdf) or simmilar. But be careful on how to connect each RGB line of these ICs to the STM32. Follow LCD specifications on how bits are arranged inside the LVDS timeframe, not only the RGB to the LVDS IC datasheet! Main reason why I used FPGA instead of these dedicated ICs is flexibility - I can experiment with the pinout, I don't have to wait IC to arrive and I will learn something new while working with the FPGA. The whole FPGA code is written in Verilog.

### Hardware
For now, there is only KiCAD files for the custom LCD breakout board to be able to use original LCD cable for the laptop. I connector is salvaged from the laptop (removed from the laptop motherboard, it's not a easy job, I will say that) and soldered back again on my DIY PCB (I made this PCB using the toner transfer method). Connector seems to be BM40B-SRDS-G-TF but I'm not 100% sure. I was using KiCAD v8.0.

### STM32
STM32 is generating RGB565 signals for the LCD by using it's LTDC driver for color LCDs. Essentially, these RGB (LTDC) are encapsulated in LVDS. So LCD is actually getting RGB data signals. Main clock for this LCD is 50-70MHz. I choose 55MHz since everything above gives bad image quality due to absolutelly not ideal setup (just a note that main pixel clock is multiplied by the FPGA PLL 7 times to get one LVDS data line bit timeframe - 385MHz!). STM32 does not have enough memory for it to store whole LCD content - framebuffer. It's only displaying rectangle of 354*354 by using one of the LTDC layers. Why I chose this resolution - I have no idea. By making custom board, SDRAM can be attached to the STM32 where whole frame buffer can be stored and in that case, some graphical engine can be added (LVGL comes to my mind as well as Adafruit GFX). STM32 code is written in STM32CubeIDE and images are generated by the LCD image converter, RGB565 preset, 16bit packing. Note that STM32 LTDC has it's limitations on max pixel clock (75MHz in this case) and these LCDs have minimal pixel clock (in this case 50 MHz).

### LCD
Yep, the star of the show! My LCD has a part number B154EW02-V2 by AUO. It's from old HP 6735b laptop. It's resolution is 1280x800, with 18 bit color? You can find datasheet on the web, but if needed, I can publish it here. Main issues were:

- LCD Connector pinout (easy, datasheet) and LCD cable pinout (harder, reverse eng.)
- LCD inverter pinout - yes, this is old-school LCD with CCFL and inverter is needed. Luckly, I have an original LCD inverter from the laptop, again pinout is missing. Little bit more reverse eng. and the pinout and working principle are known. I will post pinout for both LCD cable and LCD inverter as soon as possible.
<u>**NOTE**: LCD inverters are working with very high voltages >5kV, this can shock you or burn you! Be aware!</u>
- LCD bit arrangement inside LVDS time-frames - Again datasheet is your friend. If the datasheet is missing and LCD uses only 3 LVDS lines, can only be one of two standards; VESA and JEDIA (see potato image below that I found on the web). My LCD uses 6 bit color VESA standard. Trial and error method is your friend.

<p align="center">
  <img src="https://raw.githubusercontent.com/BornaBiro/Laptop-LCD-STM32/master/extras/images/VESAandJEDIA.jpg">
</p>

## Known issues
- Random green and red pixels - Due bad FPGA input voltage standards. It should use LVCMOS3V3 for all RGB input, but due my bad pinout arragment, this is not possible for all pins, so all pins are switshed to the LVCMOS2V5 and that causes some noise that traslates into wrong pixels being light up. For the green, this can be reduced to some exted by using 330R pull-down on MSB on the green color. I need to do this better.
- Image full of noise and jitter - Switch STM32 to use XTAL as reference clock for the PLL for the LTDC. For some reason, HSI and MSI are very noisy and PLL inside FPGA amplify that noise and jitter and we get very unstable image on the screen. Using HSE at reference source for the STM32 PLL fixed the issue.
- No full frame buffer - this one is not easy to fix, custom STM32 board with fast SDRAM is needed, maybe I make one. 

## How to reuse this on my LCD?
First, you need to find the resolution of your LCD. This should be easy. This is important to be able to calculate pixel clock. W * H * frameRate ~ Pixel Clock. In this case: 1280 * 800 * 50Hz = 51.2MHz. This is only rugh estimation, pixel clock is little bit higher due vertical and horizontal blanking intervals. Next, you need to find out the pinout for the LCD. In fact, the best thing is to get the datasheet of the LCD. There are two ways for this; google the part number of the LCD or open LCD and try to find the datasheet of the LCD controller. **BUT** be careful not to damage the LCD!

Now when you have the pinout, you need to connect the LCD to the FPGA or somekind of breakout board. I salvaged original LCD cable from the laptop and the connector from the laptop motherborad *_(hint - if you don't want to melt the connector while unsoldering, heat the board from the opposite side of the conncetor)_*. I made a [custom PCB]() as a adapter for the cable in KiCad and made PCB at home.

<p align="center">
  <img src="https://raw.githubusercontent.com/BornaBiro/Laptop-LCD-STM32/master/extras/images/customPCBBrekout.jpg">
</p>

Now you need to find out the pinout of the cable itself. By using multimeter and continuity function, put one probe on the LCD side of the connector and other one at the PCB adapter. Go one-by-one pin at the custom board until you hear the _*beep*_. You don't need go though all this trouble, you can just buy a LCD connector and solder the wires on it, or just a cut original LCD cable (motherboard side of course). But I wanted to make it the _*"right way"*_.

## Using exactly this LCD and this repo.
1. Get the ULX3S board
2. Get the Nucleo-H743ZI2 board
3. Get the Lattice Diamond and install it
4. Get the STM32CubeIDE and STM32H7 firmware package and install it both
5. Sythesis the Verilog code and upload the .bit file to the UXL3S board. I used [fujiprog](https://github.com/kost/fujprog). For Win machine I needed to install FTDI Drivers and Zadig (follow [this](https://github.com/kost/fujprog?tab=readme-ov-file#windows-drivers) for more info).
6. Build and upload code to the STM32 board.
7. Connect everything using [this diagram](https://github.com/BornaBiro/Laptop-LCD-STM32/blob/master/Docs/LCD_Timings_And_Connections.txt)
8. Power everything up. With a little luck, there should not be any smoke, but instead image will be shown on the screen.

All diagrams (txt) for the LCD can be found [here](https://github.com/BornaBiro/Laptop-LCD-STM32/tree/master/Docs).

Power supply: You can use USB on STM32 and ULX3S boards for the supply, only LCD Inverter (backlight) is using 9V-12V, **BUT** EN and DRBT pins of the LCD inverter are 3V3!

## I have a XY LCD, can you write the code for me?
Nope. I think that I gave you enough info to get you started. If I missed something, please let me know, I will try my best to fill in the gaps.

## To-DO
- Use graphics instead of the txt files for connections
- Better LVDS module for FPGA
- Custom STM32 PCB with SDRAM and dedicated RGB -> LVDS IC

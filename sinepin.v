module sinepin
#(parameter BOARD_CLOCKSPEED=250000000, FPMULT=65536, SINEROMSIZE=256, EOS="@")
(
	input _50clk,							// FPGA clock 'BOARD_CLOCKSPEED'	
	input btn,							// btn to restart music	
	input btn2,							// external button
	output [6:0 ] _7seg,
	output [7:0 ] single8seg,	
	output [3:0] digitsel ,
	
	output LCDen,
	output LCDrs,
	output [7:0] LCDdata,
	
	output led,							//  
	output led2,
	output led3,				
	output speaker,			   	// PWM 1-bit DAC
	output radio,						// copy of speaker pin
	output [7:0] u8bit_sineromvalue	//  attach to an 8-bit R2R DAC 
);

//`define _CALCENVRATE(_timems,_steps) (_steps * 1000 * 16777216)/(BOARD_CLOCKSPEED * _timems)
`define _CALCENVRATE(_timems, _steps) (( 0.0 + ((_steps * 1000 * 65536 * 256 )/(BOARD_CLOCKSPEED  * _timems))))
`define _CALCTEST(_timems, _steps) (( 0.0 + ((_steps * 1000 * 65536 * 256 )/(BOARD_CLOCKSPEED  * _timems))))


`define _QUARTROMSIZE 1024
`define _CALCSTEP(FREQ) ((0.0 + ((FREQ * FPMULT * SINEROMSIZE )/BOARD_CLOCKSPEED)))
`define _CALCSTEPQROM(FREQ) ((0.0 + ((FREQ * FPMULT * `_QUARTROMSIZE )/BOARD_CLOCKSPEED))) 

`define _CALCSTEPFROMPERIOD(PERIOD) ((0.0 + ((FPMULT * `_QUARTROMSIZE )/(PERIOD*BOARD_CLOCKSPEED)))) 

initial
begin
	$display("EnvRate test %d",`_CALCTEST(4500,255)) ;
end


localparam blink_speed = BOARD_CLOCKSPEED / 2 ;
blink #(blink_speed) blinker(.clk(clk),.led(led)) ;

assign led2 = ~led ;
assign led3 = locked ;


wire [4:0] gain ; 

wire [15:0] sinevalue1 ;
wire [15:0] notestep1 ; 

assign notestep1 = `_CALCSTEP(440) ;

frequencyGenerator #(FPMULT,SINEROMSIZE) freqGen1 (.clk(clk),
                             .stepsize(notestep1),		//notestep
									  .gain(0),
                     .romdata(sinevalue1));


wire [15:0] sinevalue2 ;
wire [15:0] notestep2 ; 
assign notestep2 = `_CALCSTEPQROM(262) ;
frequencyGeneratorLog #(FPMULT,SINEROMSIZE) freqGen2 (.clk(clk),
                             .stepsize(notestep2),		//notestep
									  .gain(0),
                     .romdata(sinevalue2));


// 3rd 'Channel' plays a tune -
wire [15:0] notestep3 ; 
wire [15:0] notestep4 ; 
wire [7:0] note3 ;
wire [7:0] note4 ;
wire [31:0] sinevalue3 ;
wire [31:0] sinevalue4 ;

reg [31:0] musicaddress ;
wire [31:0] phase ;


`define _FULLWAVEROM

`ifdef _FULLWXAVEROM

frequencyGenerator #(FPMULT,SINEROMSIZE) freqGen3 (.clk(clk),
                             .stepsize(notestep3),		//notestep
									  .gain(gain),
                     .romdata(sinevalue3));

frequencyGenerator #(FPMULT,SINEROMSIZE) freqGen4 (.clk(clk),
                             .stepsize(notestep4),		//notestep
									  .gain(gain),
                     .romdata(sinevalue4)) ;
midiSelection #(256) generateStepSizeForNote3(.clk(clk),.note(note3),.stepsize(notestep3)) ;
midiSelection #(256) generateStepSizeForNote4(.clk(clk),.note(note3 + 12),.stepsize(notestep4)) ;

musicROM get_fullnote1(.clk(clk), .address(musicaddress[29:21]), .note(note3));
assign phase = sinevalue3 ;

`else

wire [31:0] modfreqstep3 ;
wire [31:0] modfreqstep4 ;
// 1209 + 697
assign modfreqstep3 = `_CALCSTEPQROM(620) ;
assign modfreqstep4 = `_CALCSTEPQROM(440) ;

assign gain = 7;

assign carryfreqstep = `_CALCSTEPQROM(1250000) ;

// Modulator Frequency Generator - Music
frequencyGeneratorQuart #(FPMULT) modfreqGen (.clk(clk),
                             .stepsize(notestep4),		//modulator frequency step - notestep4
									   .phase(0),
									  .gain(0),
                     .romdata(sinevalue4));


// Music note (carrier frequency) generator 
frequencyGeneratorQuart #(FPMULT) freqGen3 (.clk(clk),
                             .stepsize(notestep3),		//notestep3
									   .phase(0),
									  .gain(0),
                     .romdata(sinevalue3));
midiSelection #(BOARD_CLOCKSPEED,1024) generateStepSizeForNote4(.clk(clk),.note(note4),.stepsize(notestep4)) ;
midiSelection #(BOARD_CLOCKSPEED,1024) generateStepSizeForNote3(.clk(clk),.note(note3),.stepsize(notestep3)) ;
musicMarioROM get_fullnotechn1(.clk(clk), .address(musicaddress[29:21]), .note(note3));
musicMarioROM2 get_fullnotechn2(.clk(clk), .address(musicaddress[29:21]), .note(note4));

`endif



wire [31:0] mixedaudio ; 
wire [15:0] mixchoice ;
//assign mixchoice = (!btn2) ? sinevalue4 : sinevalue3 ;
//assign mixedaudio = (btn2) ? (note4 == 8'd255 ? 0 : sinevalue4)  : (note3 == 8'd255 ? 0 : sinevalue3) ;
//assign mixedaudio = btn2 ? sinevalue4 : (sinevalue3 >> 1) + (sinevalue4 >> 1) ;
assign mixedaudio = ((note4 == 8'd255 ? 0 : sinevalue4 )  + (note3 == 8'd255 ? 0 : sinevalue3) + (note3 == 8'd255 ? 0 : sinevalue3)) ;
//assign mixedaudio =  (note3 == 8'd1 ? 0 : sinevalue3)<<1;
//mixer getMix(.clk(clk),.chn1(mixchoice),.chn2(mixchoice),.mixedaudio(mixedaudio)) ;

localparam pwmRes = 8 ;
localparam pwmMSBit = 15 ;
localparam pcmMSBit = 19 ;
localparam dacSize = 8 ;

wire pwmout1,pwmout2 ;
assign speaker = btn2 ? pwmout1: pwmout1 ;
//pwm  #(pwmRes) pwmradio(.clk(clk),.ubit_voltage(mixedaudio[19:19 - 8 + 1]),.pwmpin(radio)) ;
pwm  #(pwmRes) pwmspeaker(.clk(clk),.ubit_voltage(mixedaudio[pwmMSBit:pwmMSBit - pwmRes + 1]),.pwmpin(pwmout1)) ;
//PWMSigmaDeltaDAC #(pwmRes) pwmSDdac(.clk(clk),.ubit_voltage(mixedaudio[pwmMSBit:pwmMSBit - 8 + 1]),.pwmpin(pwmout2)) ;
assign u8bit_sineromvalue = mixedaudio[pcmMSBit:pcmMSBit - dacSize + 1];

//mixedaudio[15:8] ;

/*
module envelope #(parameter BOARD_CLOCKSPEED=50000000, FPMULT=65536) 
(input clk,
 input [1:0] cmd,
 input [31:0] attack_rate,
 input [31:0] decay_rate ,
 input [4:0] sustain_level,
 input [31:0] release_rate,
 output [4:0] gain  
);

*/

wire [4:0] envGain ;

/*
 input [31:0] attack_rate,
 input [31:0] decay_rate ,
 input [4:0] sustain_level,
 input [31:0] release_rate
*/
wire [31:0] attack_rate ;
wire [31:0] decay_rate ;
wire [31:0] sustain_level ;
wire [31:0] release_rate ;

assign attack_rate = `_CALCENVRATE(4500,255) ;
assign decay_rate = `_CALCENVRATE(200,55) ;
assign sustain_level = `_CALCENVRATE(1500,0) ;
assign release_rate = `_CALCENVRATE(1200,200) ;

envelope env(
				.clk(clk),
				.cmd(~btn),		
				.attack_rate(attack_rate),
				.decay_rate(decay_rate),
				.sustain_level(sustain_level),
				.release_rate(release_rate),
				.gain(envGain)
				) ;


wire _1sec ;
blink #(BOARD_CLOCKSPEED/2) _1secblinker(.clk(clk),.led(_1sec)) ;


`define _HEXANDLCD_DISPLAY

`ifdef _HEXANDLCD_DISPLAY

lcdandsegtest #(EOS) lcddispl(
	.clk(clk),							
	.longValue(musicaddress),
	.byteValue(note3),
	.parValue(note4),
	.dotblink(led),
	._1secblink(_1sec),
	.rstbtn(btn),
	._7seg(_7seg),
	.single8seg(single8seg),	
	.digitsel(digitsel) ,
	.LCDen(LCDen),
	.LCDrs(LCDrs),
	.LCDdata(LCDdata) );

`endif




`define _MUSICPLAYER


/*
module mypll (
	inclk0,
	c0,
	locked);
*/
wire locked,clk,pllclk ;
assign locked = led3 ;
assign clk = pllclk ;
mypll pll1(.inclk0(_50clk),.c0(pllclk), .locked(locked) )	;
			
`ifdef _MUSICPLAYER

// Music Player

reg [1:0] musicdiv = 0 ;

localparam music_speed = BOARD_CLOCKSPEED / 256 ;
blink #(music_speed) musicbeat(.clk(clk),.led(beat)) ;
wire beat ;

reg[15:0] taddr ;

always @(posedge beat)
begin
	if (note3 == 0)
		taddr <= 0 ;
	else
		taddr  <= taddr + 1'd1  ;
end


always @(posedge _50clk)
begin

	musicdiv <= musicdiv + 1'd1 ;
	
	if (musicdiv == 0) 
	begin
		if ((note3 == 0))
			musicaddress <= 0 ;
		else
			musicaddress <= musicaddress + 1'd1 ;
	end

	
end


`endif

endmodule










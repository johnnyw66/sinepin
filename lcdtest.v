module lcdandsegtest
#(parameter EOS="@")
(
	input clk,							// FPGA clock 'BOARD_CLOCKSPEED'	
	input [31:0] longValue,
	input [7:0] byteValue,
	input [7:0] parValue,
	input dotblink,
	input _1secblink,
	input rstbtn,
	
	output [6:0 ] _7seg,
	output [7:0 ] single8seg,	
	output [3:0] digitsel ,
	
	output LCDen,
	output LCDrs,
	output [7:0] LCDdata
	
);

`define _NYBBLE(_value) (_value & 8'd15)	
`define _HEXSTR(_value) (_value > 9 ? _value + 8'd55 : _value + 8'd48)


// Home brew board with 4x 7segment display.				
// Bus pins - (top line 1st)
//  x x x 3 x x 0 x x				
//  2 e d a f c g b 1
// letters = 7 segment display (active high)
// numbers = digit select (active low)
wire [15:0] lvalue ;

assign lvalue = byteValue  | parValue << 8 ;

// Hex 4xSegment Display
hexdisplay segdisplay(.clk(clk), .value(lvalue), .enable(1), .segment(_7seg),.omask(digitsel)) ;


// Single 7 Seg Display (with 'dot') - 'enable' 2 bits - lower bit main segdisplay, upper bit #dot'
shexseg shexseg(.value(`_NYBBLE(byteValue)),.enable(2'b11), .dot(dotblink), .osegment(single8seg)) ;



// LCD Display String 

wire [255:0] lstring ;
wire [7:0] lnibhexs,unibhexs,lnibhexNote,unibhexNote,lnibhexNote2,unibhexNote2 ;

assign lnibhexNote = `_HEXSTR(byteValue[3:0]) ;
assign unibhexNote = `_HEXSTR(byteValue[7:4]) ;

assign lnibhexNote2 = `_HEXSTR(parValue[3:0]) ;
assign unibhexNote2 = `_HEXSTR(parValue[7:4]) ;


//musicaddress[29:21]
assign unibhexs = `_HEXSTR(longValue[28:25]) ;
assign lnibhexs = `_HEXSTR(longValue[24:21]) ;
//assign unibhexs = `_HEXSTR(0) ;
//assign lnibhexs = `_HEXSTR(0) ;

assign lstring = " " | " "<<8 
					| "N" << 16 | "O"<<24 | "T"<<32 | "E"<<40 
					| "S"<<48 
					| " "<<56 | unibhexNote2<<64 | lnibhexNote2<<72 | "h"<<80  | ","<<88 
					| unibhexNote<<96 | lnibhexNote<<104 
					| "h" <<112 | " "<<120 
					// Second LCD Line
					| " " <<128 | " "<<136 
					| "A"<<144 | "D"<<152 | "D"<<160 | "R"<<168 | ":"<<176 
					| unibhexs <<184 | lnibhexs<<192
					| "h"<<200

					| " "<<208 |  " "<<216
					| " "<<224 |  " "<<232
					| (_1secblink ? " " : "<") <<240 
					| (!_1secblink ? " " : ">") <<248 ;
					//| EOS<<208 ;

// Display a string on one of the lines of our 2x16 LCD display (1602)
// String can be up to 32 characters - (256 bits)
lcd1602String #(EOS) lcdDisplay(.clk(clk),
				.str(lstring),
				 .line(1'b0),
				 .reset(~rstbtn),
				.dat(LCDdata),
				.rs(LCDrs),
				.en(LCDen)
				) ;



endmodule

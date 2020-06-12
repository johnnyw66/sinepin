module lcd1602String  #(parameter end_of_string)(clk, str, line, reset, rs,en,dat);  

 input clk;  				// Main Bus clock 
 input [255:0] str;		// 32 Character LCD buffer	
 input line ; 				// LCD line number to print
 input reset ;				// Reset LCD Display (force state to 'STATE_INIT0')
 output [7:0] dat; 		// data bus (command or character data)	
 output  rs,en; 			// rs = reg select (command or data) en = Enable (Strobe data)
 
 reg e; 						// override 'en' strobe
 reg [7:0] dat; 				// LCD main 8-bit data bus
 reg rs;   						// signifies if data on bus is LCD command or Char data
 reg  [15:0] counter ; 	  // prescaler used to strobe reg/char data		
 reg [4:0] current,next; // FSM state	 
 reg clkr; 					 // Delayed clock (prescaled by counter) ensures command/char data on dat bus
								// is latched by the 1602 LCD
 reg [7:0] charcnt  ;	// Char Buffer pointer offset (note: leave as 8-bit since we are shifting this to work out bit buffer offset)
 reg cline ; 				// current line (0 or 1)

 // rs values
 localparam REGCMD				= 1'b0 ;
 localparam REGDATA				= 1'b1 ;
 
 localparam  STATE_INIT0 		= 4'd0 ; 	// set LCD mode
 localparam  STATE_INIT1 		= 4'd1 ; 	// Turn on display and set cursor type
 localparam  STATE_INIT2 		= 4'd2 ; 	// Clear LCD
 localparam  STATE_INIT3 		= 4'd3 ; 	// Reset Cursor to start of 1 of 2 display lines.

 localparam  STATE_SENDSTR 	= 4'd4 ; 	// Print ascii chars to LCD	
 localparam  STATE_FINISH 		= 4'd5 ;		// Finish off strobing 'en' line
 localparam  STATE_NEXTLINE	= 4'd6 ;		// 
 
 localparam  STATE_RESETCUR 	= 4'd14 ;		// Move LCD cursor to 'home' position ready to redraw line.
 localparam  STATE_RESET 		= 4'd15 ;		// force complete reset (from 'reset' input)

 localparam LCDCMD_MODE1 			= 8'h31 ;
 localparam LCDCMD_MODE2 			= 8'h38 ;
 localparam LCDCMD_HOME  			= 8'h02 ;
 localparam LCDCMD_HOME1  			= 8'h80 ;
 localparam LCDCMD_HOME2  			= 8'hc0 ;
 localparam LCDCMD_DISPON_CUROFF	= 8'h0c ;
 localparam LCDCMD_CLR  			= 8'h01 ;

 
initial
begin	
	//cline = line ;
end 
	
 
always @(posedge clk)      
begin 
  counter = counter + 1'd1 ; 
  if(counter == 0)  
	clkr=~clkr; 
end 

always @(posedge clkr) 
begin 
 current=next; 
  case(current) 

	 STATE_INIT0: begin  rs <= REGCMD ; dat <= LCDCMD_MODE2 ; charcnt <= 0 ; next <= STATE_INIT1; end 
    STATE_INIT1: begin  rs <= REGCMD; dat <= LCDCMD_DISPON_CUROFF; next <= STATE_INIT2; end 
	 STATE_INIT2: begin  rs <= REGCMD; dat <= LCDCMD_CLR; next <=STATE_INIT3; end 
	 STATE_INIT3: begin  rs <= REGCMD ; dat <= line ? LCDCMD_HOME2 : LCDCMD_HOME1 ; next <= STATE_SENDSTR; end 
	 
    STATE_SENDSTR:   begin  
					dat = (str >> (charcnt<<3)) & 8'd255;
					
					if (charcnt == 32 | dat == end_of_string | reset)  
					begin
					   dat = 0 ;
						rs <=  REGCMD ;
						e <= 1 ;
						charcnt <= 0 ;
						next <= reset ? STATE_RESET : STATE_FINISH ;	
					end
					else 
						begin
							
							if ((charcnt > 5'd15) && (cline == line))
							begin
								dat = 0 ;
								rs <= REGCMD ; 
								e <= 1 ;
								next <= STATE_NEXTLINE ;	
							end
							else 
							begin
								rs <= REGDATA ; 
								charcnt <= charcnt + 5'd1 ;
							end
							
						end
						
				end 

		STATE_FINISH:  
	       begin 
					e <= 0; next <= STATE_RESETCUR;  
          end 
			 
		STATE_NEXTLINE:
			begin
				e <= 0 ;
				cline <= ~cline ;
				rs <= REGCMD ; dat <= cline ? LCDCMD_HOME1 : LCDCMD_HOME2 ;
				next <= STATE_SENDSTR ;
			end
			
		STATE_RESETCUR:
			begin
				rs <= REGCMD ; dat <= line ? LCDCMD_HOME2 : LCDCMD_HOME1 ; // set cursor to home position on specified line
				cline <= line ;
				charcnt <= 0 ;
				next <= STATE_SENDSTR ;
			end

		STATE_RESET:
			begin
				e <= 0; next <= STATE_INIT0;  
			end

		default: next <= STATE_INIT0; 
    endcase 
 end 

 assign en=clkr | e; 		// Strobing 'en' line done on posedge of (delayed) clkr or overriden 
								// in the event of char buffer being completed or reset event.
								

endmodule  


module envelope #(parameter BOARD_CLOCKSPEED=50000000, FPMULT=65536) 
(input clk,
 input [0:0] cmd,
 input [31:0] attack_rate,
 input [31:0] decay_rate ,
 input [4:0] sustain_level,
 input [31:0] release_rate,
 output  [4:0] gain  
);

localparam STATE_IDLE 		= 0 ;
localparam STATE_ATTACK 	= 1 ;
localparam STATE_DECAY 		= 2 ;
localparam STATE_SUSTAIN 	= 3 ;
localparam STATE_RELEASE 	= 4 ;

// valid commands = press, release

localparam CMD_PRESS 		= 1'b0 ;
localparam CMD_RELEASE		= 1'b1 ;


reg [32:0] currentGain = 32'd0 ;
reg [2:0] state = STATE_IDLE ;		// idle = 0, attack = 1, decay = 2, sustain = 3, release = 4

always @(posedge clk)
begin

	case(state)
	
		STATE_IDLE:
			begin
				if (cmd == CMD_PRESS) 
				begin
					state <= STATE_ATTACK ;
					currentGain <= 0 ;
				end
				
			end

		STATE_ATTACK:
			begin
				currentGain <= currentGain + attack_rate ;
				if (currentGain[32:24] >= 255) 
					state <= STATE_DECAY ;
			end
			
		STATE_DECAY:
			begin
				currentGain <= currentGain - decay_rate ;
				if (currentGain[31:24] == 8)
					state <= STATE_SUSTAIN ;

			end

		STATE_SUSTAIN:
			begin
				currentGain[31:24] <= sustain_level ;
				if (cmd == CMD_RELEASE) 
					state <= STATE_RELEASE ;
			end

		STATE_RELEASE:
			begin
				if (currentGain[32:24] == 0)
					state <= STATE_IDLE ;
				currentGain <= currentGain  - release_rate ;
			end

		default:
				begin
					currentGain <= 0 ;
				end
	endcase
	
end


assign gain = currentGain[31:27] ;

endmodule
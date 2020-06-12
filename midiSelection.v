module  midiSelection #(CLOCKSPEED=50000000,SINEROMSIZE = 256)(clk,note,stepsize) ;
input clk ;
input [7:0] note ;
output reg   [15:0] stepsize ;

// Midi-Note to Frequency stepsize conversion.

// Our 16 bit stepsize used to sweep through our SineROM
// calculated for each 127 - Midi Notes	
// Case statement was built using the following Python code using the simple relationship
// between a midi-note (7-bit number 0-127) and a frequency.
// Johnny Wilson - Brighton, East Sussex 2020.

/* 
import math ;

#_CALCSTEP(FREQ) ((0.0 + ((FREQ * FPMULT * SINEROMSIZE )/BOARD_CLOCKSPEED)))

baseClock = 50000000.0 ;
sineromsize = 256.0 ;
fpmult = 65536.0 ;

baseFreq = 440 ;	
for i in range (128):
    freq = (baseFreq / 32.0) * (pow(2.0,((i - 9.0) / 12.0))) ;
    step = int(0.5 + (freq * fpmult * sineromsize / baseClock)) ;
    print("7'd%d : stepsize <= 16'd%d ; // freq %d" % (i,step,freq)) ;
*/


	// sineromsize = 256, LUT	
	always @(posedge clk) 
	begin
	
		if (SINEROMSIZE == 256)
	
		case(note[6:0])

			7'd0 : stepsize <= 16'd3 ; // freq 8
			7'd1 : stepsize <= 16'd3 ; // freq 8
			7'd2 : stepsize <= 16'd3 ; // freq 9
			7'd3 : stepsize <= 16'd3 ; // freq 9
			7'd4 : stepsize <= 16'd3 ; // freq 10
			7'd5 : stepsize <= 16'd4 ; // freq 10
			7'd6 : stepsize <= 16'd4 ; // freq 11
			7'd7 : stepsize <= 16'd4 ; // freq 12
			7'd8 : stepsize <= 16'd4 ; // freq 12
			7'd9 : stepsize <= 16'd5 ; // freq 13
			7'd10 : stepsize <= 16'd5 ; // freq 14
			7'd11 : stepsize <= 16'd5 ; // freq 15
			7'd12 : stepsize <= 16'd5 ; // freq 16
			7'd13 : stepsize <= 16'd6 ; // freq 17
			7'd14 : stepsize <= 16'd6 ; // freq 18
			7'd15 : stepsize <= 16'd7 ; // freq 19
			7'd16 : stepsize <= 16'd7 ; // freq 20
			7'd17 : stepsize <= 16'd7 ; // freq 21
			7'd18 : stepsize <= 16'd8 ; // freq 23
			7'd19 : stepsize <= 16'd8 ; // freq 24
			7'd20 : stepsize <= 16'd9 ; // freq 25
			7'd21 : stepsize <= 16'd9 ; // freq 27
			7'd22 : stepsize <= 16'd10 ; // freq 29
			7'd23 : stepsize <= 16'd10 ; // freq 30
			7'd24 : stepsize <= 16'd11 ; // freq 32
			7'd25 : stepsize <= 16'd12 ; // freq 34
			7'd26 : stepsize <= 16'd12 ; // freq 36
			7'd27 : stepsize <= 16'd13 ; // freq 38
			7'd28 : stepsize <= 16'd14 ; // freq 41
			7'd29 : stepsize <= 16'd15 ; // freq 43
			7'd30 : stepsize <= 16'd16 ; // freq 46
			7'd31 : stepsize <= 16'd16 ; // freq 48
			7'd32 : stepsize <= 16'd17 ; // freq 51
			7'd33 : stepsize <= 16'd18 ; // freq 55
			7'd34 : stepsize <= 16'd20 ; // freq 58
			7'd35 : stepsize <= 16'd21 ; // freq 61
			7'd36 : stepsize <= 16'd22 ; // freq 65
			7'd37 : stepsize <= 16'd23 ; // freq 69
			7'd38 : stepsize <= 16'd25 ; // freq 73
			7'd39 : stepsize <= 16'd26 ; // freq 77
			7'd40 : stepsize <= 16'd28 ; // freq 82
			7'd41 : stepsize <= 16'd29 ; // freq 87
			7'd42 : stepsize <= 16'd31 ; // freq 92
			7'd43 : stepsize <= 16'd33 ; // freq 97
			7'd44 : stepsize <= 16'd35 ; // freq 103
			7'd45 : stepsize <= 16'd37 ; // freq 110
			7'd46 : stepsize <= 16'd39 ; // freq 116
			7'd47 : stepsize <= 16'd41 ; // freq 123
			7'd48 : stepsize <= 16'd44 ; // freq 130
			7'd49 : stepsize <= 16'd47 ; // freq 138
			7'd50 : stepsize <= 16'd49 ; // freq 146
			7'd51 : stepsize <= 16'd52 ; // freq 155
			7'd52 : stepsize <= 16'd55 ; // freq 164
			7'd53 : stepsize <= 16'd59 ; // freq 174
			7'd54 : stepsize <= 16'd62 ; // freq 184
			7'd55 : stepsize <= 16'd66 ; // freq 195
			7'd56 : stepsize <= 16'd70 ; // freq 207
			7'd57 : stepsize <= 16'd74 ; // freq 220
			7'd58 : stepsize <= 16'd78 ; // freq 233
			7'd59 : stepsize <= 16'd83 ; // freq 246
			7'd60 : stepsize <= 16'd88 ; // freq 261
			7'd61 : stepsize <= 16'd93 ; // freq 277
			7'd62 : stepsize <= 16'd99 ; // freq 293
			7'd63 : stepsize <= 16'd104 ; // freq 311
			7'd64 : stepsize <= 16'd111 ; // freq 329
			7'd65 : stepsize <= 16'd117 ; // freq 349
			7'd66 : stepsize <= 16'd124 ; // freq 369
			7'd67 : stepsize <= 16'd132 ; // freq 391
			7'd68 : stepsize <= 16'd139 ; // freq 415
			7'd69 : stepsize <= 16'd148 ; // freq 440
			7'd70 : stepsize <= 16'd156 ; // freq 466
			7'd71 : stepsize <= 16'd166 ; // freq 493
			7'd72 : stepsize <= 16'd176 ; // freq 523
			7'd73 : stepsize <= 16'd186 ; // freq 554
			7'd74 : stepsize <= 16'd197 ; // freq 587
			7'd75 : stepsize <= 16'd209 ; // freq 622
			7'd76 : stepsize <= 16'd221 ; // freq 659
			7'd77 : stepsize <= 16'd234 ; // freq 698
			7'd78 : stepsize <= 16'd248 ; // freq 739
			7'd79 : stepsize <= 16'd263 ; // freq 783
			7'd80 : stepsize <= 16'd279 ; // freq 830
			7'd81 : stepsize <= 16'd295 ; // freq 880
			7'd82 : stepsize <= 16'd313 ; // freq 932
			7'd83 : stepsize <= 16'd331 ; // freq 987
			7'd84 : stepsize <= 16'd351 ; // freq 1046
			7'd85 : stepsize <= 16'd372 ; // freq 1108
			7'd86 : stepsize <= 16'd394 ; // freq 1174
			7'd87 : stepsize <= 16'd418 ; // freq 1244
			7'd88 : stepsize <= 16'd442 ; // freq 1318
			7'd89 : stepsize <= 16'd469 ; // freq 1396
			7'd90 : stepsize <= 16'd497 ; // freq 1479
			7'd91 : stepsize <= 16'd526 ; // freq 1567
			7'd92 : stepsize <= 16'd557 ; // freq 1661
			7'd93 : stepsize <= 16'd591 ; // freq 1760
			7'd94 : stepsize <= 16'd626 ; // freq 1864
			7'd95 : stepsize <= 16'd663 ; // freq 1975
			7'd96 : stepsize <= 16'd702 ; // freq 2093
			7'd97 : stepsize <= 16'd744 ; // freq 2217
			7'd98 : stepsize <= 16'd788 ; // freq 2349
			7'd99 : stepsize <= 16'd835 ; // freq 2489
			7'd100 : stepsize <= 16'd885 ; // freq 2637
			7'd101 : stepsize <= 16'd937 ; // freq 2793
			7'd102 : stepsize <= 16'd993 ; // freq 2959
			7'd103 : stepsize <= 16'd1052 ; // freq 3135
			7'd104 : stepsize <= 16'd1115 ; // freq 3322
			7'd105 : stepsize <= 16'd1181 ; // freq 3520
			7'd106 : stepsize <= 16'd1251 ; // freq 3729
			7'd107 : stepsize <= 16'd1326 ; // freq 3951
			7'd108 : stepsize <= 16'd1405 ; // freq 4186
			7'd109 : stepsize <= 16'd1488 ; // freq 4434
			7'd110 : stepsize <= 16'd1577 ; // freq 4698
			7'd111 : stepsize <= 16'd1670 ; // freq 4978
			7'd112 : stepsize <= 16'd1770 ; // freq 5274
			7'd113 : stepsize <= 16'd1875 ; // freq 5587
			7'd114 : stepsize <= 16'd1986 ; // freq 5919
			7'd115 : stepsize <= 16'd2105 ; // freq 6271
			7'd116 : stepsize <= 16'd2230 ; // freq 6644
			7'd117 : stepsize <= 16'd2362 ; // freq 7040
			7'd118 : stepsize <= 16'd2503 ; // freq 7458
			7'd119 : stepsize <= 16'd2652 ; // freq 7902
			7'd120 : stepsize <= 16'd2809 ; // freq 8372
			7'd121 : stepsize <= 16'd2976 ; // freq 8869
			7'd122 : stepsize <= 16'd3153 ; // freq 9397
			7'd123 : stepsize <= 16'd3341 ; // freq 9956
			7'd124 : stepsize <= 16'd3539 ; // freq 10548
			7'd125 : stepsize <= 16'd3750 ; // freq 11175
			7'd126 : stepsize <= 16'd3973 ; // freq 11839
			7'd127 : stepsize <= 16'd4209 ; // freq 12543			
	
		endcase
		else if (CLOCKSPEED == 50000000)
		
			// SINEROMSIZE = 1024
			// CLOCKSPEED 50Mhz
			case(note[6:0])
			
				7'd0 : stepsize <= 16'd11 ; // freq 8
				7'd1 : stepsize <= 16'd12 ; // freq 8
				7'd2 : stepsize <= 16'd12 ; // freq 9
				7'd3 : stepsize <= 16'd13 ; // freq 9
				7'd4 : stepsize <= 16'd14 ; // freq 10
				7'd5 : stepsize <= 16'd15 ; // freq 10
				7'd6 : stepsize <= 16'd16 ; // freq 11
				7'd7 : stepsize <= 16'd16 ; // freq 12
				7'd8 : stepsize <= 16'd17 ; // freq 12
				7'd9 : stepsize <= 16'd18 ; // freq 13
				7'd10 : stepsize <= 16'd20 ; // freq 14
				7'd11 : stepsize <= 16'd21 ; // freq 15
				7'd12 : stepsize <= 16'd22 ; // freq 16
				7'd13 : stepsize <= 16'd23 ; // freq 17
				7'd14 : stepsize <= 16'd25 ; // freq 18
				7'd15 : stepsize <= 16'd26 ; // freq 19
				7'd16 : stepsize <= 16'd28 ; // freq 20
				7'd17 : stepsize <= 16'd29 ; // freq 21
				7'd18 : stepsize <= 16'd31 ; // freq 23
				7'd19 : stepsize <= 16'd33 ; // freq 24
				7'd20 : stepsize <= 16'd35 ; // freq 25
				7'd21 : stepsize <= 16'd37 ; // freq 27
				7'd22 : stepsize <= 16'd39 ; // freq 29
				7'd23 : stepsize <= 16'd41 ; // freq 30
				7'd24 : stepsize <= 16'd44 ; // freq 32
				7'd25 : stepsize <= 16'd47 ; // freq 34
				7'd26 : stepsize <= 16'd49 ; // freq 36
				7'd27 : stepsize <= 16'd52 ; // freq 38
				7'd28 : stepsize <= 16'd55 ; // freq 41
				7'd29 : stepsize <= 16'd59 ; // freq 43
				7'd30 : stepsize <= 16'd62 ; // freq 46
				7'd31 : stepsize <= 16'd66 ; // freq 48
				7'd32 : stepsize <= 16'd70 ; // freq 51
				7'd33 : stepsize <= 16'd74 ; // freq 55
				7'd34 : stepsize <= 16'd78 ; // freq 58
				7'd35 : stepsize <= 16'd83 ; // freq 61
				7'd36 : stepsize <= 16'd88 ; // freq 65
				7'd37 : stepsize <= 16'd93 ; // freq 69
				7'd38 : stepsize <= 16'd99 ; // freq 73
				7'd39 : stepsize <= 16'd104 ; // freq 77
				7'd40 : stepsize <= 16'd111 ; // freq 82
				7'd41 : stepsize <= 16'd117 ; // freq 87
				7'd42 : stepsize <= 16'd124 ; // freq 92
				7'd43 : stepsize <= 16'd132 ; // freq 97
				7'd44 : stepsize <= 16'd139 ; // freq 103
				7'd45 : stepsize <= 16'd148 ; // freq 110
				7'd46 : stepsize <= 16'd156 ; // freq 116
				7'd47 : stepsize <= 16'd166 ; // freq 123
				7'd48 : stepsize <= 16'd176 ; // freq 130
				7'd49 : stepsize <= 16'd186 ; // freq 138
				7'd50 : stepsize <= 16'd197 ; // freq 146
				7'd51 : stepsize <= 16'd209 ; // freq 155
				7'd52 : stepsize <= 16'd221 ; // freq 164
				7'd53 : stepsize <= 16'd234 ; // freq 174
				7'd54 : stepsize <= 16'd248 ; // freq 184
				7'd55 : stepsize <= 16'd263 ; // freq 195
				7'd56 : stepsize <= 16'd279 ; // freq 207
				7'd57 : stepsize <= 16'd295 ; // freq 220
				7'd58 : stepsize <= 16'd313 ; // freq 233
				7'd59 : stepsize <= 16'd331 ; // freq 246
				7'd60 : stepsize <= 16'd351 ; // freq 261
				7'd61 : stepsize <= 16'd372 ; // freq 277
				7'd62 : stepsize <= 16'd394 ; // freq 293
				7'd63 : stepsize <= 16'd418 ; // freq 311
				7'd64 : stepsize <= 16'd442 ; // freq 329
				7'd65 : stepsize <= 16'd469 ; // freq 349
				7'd66 : stepsize <= 16'd497 ; // freq 369
				7'd67 : stepsize <= 16'd526 ; // freq 391
				7'd68 : stepsize <= 16'd557 ; // freq 415
				7'd69 : stepsize <= 16'd591 ; // freq 440
				7'd70 : stepsize <= 16'd626 ; // freq 466
				7'd71 : stepsize <= 16'd663 ; // freq 493
				7'd72 : stepsize <= 16'd702 ; // freq 523
				7'd73 : stepsize <= 16'd744 ; // freq 554
				7'd74 : stepsize <= 16'd788 ; // freq 587
				7'd75 : stepsize <= 16'd835 ; // freq 622
				7'd76 : stepsize <= 16'd885 ; // freq 659
				7'd77 : stepsize <= 16'd937 ; // freq 698
				7'd78 : stepsize <= 16'd993 ; // freq 739
				7'd79 : stepsize <= 16'd1052 ; // freq 783
				7'd80 : stepsize <= 16'd1115 ; // freq 830
				7'd81 : stepsize <= 16'd1181 ; // freq 880
				7'd82 : stepsize <= 16'd1251 ; // freq 932
				7'd83 : stepsize <= 16'd1326 ; // freq 987
				7'd84 : stepsize <= 16'd1405 ; // freq 1046
				7'd85 : stepsize <= 16'd1488 ; // freq 1108
				7'd86 : stepsize <= 16'd1577 ; // freq 1174
				7'd87 : stepsize <= 16'd1670 ; // freq 1244
				7'd88 : stepsize <= 16'd1770 ; // freq 1318
				7'd89 : stepsize <= 16'd1875 ; // freq 1396
				7'd90 : stepsize <= 16'd1986 ; // freq 1479
				7'd91 : stepsize <= 16'd2105 ; // freq 1567
				7'd92 : stepsize <= 16'd2230 ; // freq 1661
				7'd93 : stepsize <= 16'd2362 ; // freq 1760
				7'd94 : stepsize <= 16'd2503 ; // freq 1864
				7'd95 : stepsize <= 16'd2652 ; // freq 1975
				7'd96 : stepsize <= 16'd2809 ; // freq 2093
				7'd97 : stepsize <= 16'd2976 ; // freq 2217
				7'd98 : stepsize <= 16'd3153 ; // freq 2349
				7'd99 : stepsize <= 16'd3341 ; // freq 2489
				7'd100 : stepsize <= 16'd3539 ; // freq 2637
				7'd101 : stepsize <= 16'd3750 ; // freq 2793
				7'd102 : stepsize <= 16'd3973 ; // freq 2959
				7'd103 : stepsize <= 16'd4209 ; // freq 3135
				7'd104 : stepsize <= 16'd4459 ; // freq 3322
				7'd105 : stepsize <= 16'd4724 ; // freq 3520
				7'd106 : stepsize <= 16'd5005 ; // freq 3729
				7'd107 : stepsize <= 16'd5303 ; // freq 3951
				7'd108 : stepsize <= 16'd5618 ; // freq 4186
				7'd109 : stepsize <= 16'd5952 ; // freq 4434
				7'd110 : stepsize <= 16'd6306 ; // freq 4698
				7'd111 : stepsize <= 16'd6681 ; // freq 4978
				7'd112 : stepsize <= 16'd7079 ; // freq 5274
				7'd113 : stepsize <= 16'd7500 ; // freq 5587
				7'd114 : stepsize <= 16'd7946 ; // freq 5919
				7'd115 : stepsize <= 16'd8418 ; // freq 6271
				7'd116 : stepsize <= 16'd8919 ; // freq 6644
				7'd117 : stepsize <= 16'd9449 ; // freq 7040
				7'd118 : stepsize <= 16'd10011 ; // freq 7458
				7'd119 : stepsize <= 16'd10606 ; // freq 7902
				7'd120 : stepsize <= 16'd11237 ; // freq 8372
				7'd121 : stepsize <= 16'd11905 ; // freq 8869
				7'd122 : stepsize <= 16'd12613 ; // freq 9397
				7'd123 : stepsize <= 16'd13363 ; // freq 9956
				7'd124 : stepsize <= 16'd14157 ; // freq 10548
				7'd125 : stepsize <= 16'd14999 ; // freq 11175
				7'd126 : stepsize <= 16'd15891 ; // freq 11839
				7'd127 : stepsize <= 16'd16836 ; // freq 12543	
			endcase
		
		else
			// SINEROMSIZE = 1024
			// CLOCKSPEED 250MHz
			case(note[6:0])
				7'd0 : stepsize <= 16'd2 ; // freq 8
				7'd1 : stepsize <= 16'd2 ; // freq 8
				7'd2 : stepsize <= 16'd2 ; // freq 9
				7'd3 : stepsize <= 16'd3 ; // freq 9
				7'd4 : stepsize <= 16'd3 ; // freq 10
				7'd5 : stepsize <= 16'd3 ; // freq 10
				7'd6 : stepsize <= 16'd3 ; // freq 11
				7'd7 : stepsize <= 16'd3 ; // freq 12
				7'd8 : stepsize <= 16'd3 ; // freq 12
				7'd9 : stepsize <= 16'd4 ; // freq 13
				7'd10 : stepsize <= 16'd4 ; // freq 14
				7'd11 : stepsize <= 16'd4 ; // freq 15
				7'd12 : stepsize <= 16'd4 ; // freq 16
				7'd13 : stepsize <= 16'd5 ; // freq 17
				7'd14 : stepsize <= 16'd5 ; // freq 18
				7'd15 : stepsize <= 16'd5 ; // freq 19
				7'd16 : stepsize <= 16'd6 ; // freq 20
				7'd17 : stepsize <= 16'd6 ; // freq 21
				7'd18 : stepsize <= 16'd6 ; // freq 23
				7'd19 : stepsize <= 16'd7 ; // freq 24
				7'd20 : stepsize <= 16'd7 ; // freq 25
				7'd21 : stepsize <= 16'd7 ; // freq 27
				7'd22 : stepsize <= 16'd8 ; // freq 29
				7'd23 : stepsize <= 16'd8 ; // freq 30
				7'd24 : stepsize <= 16'd9 ; // freq 32
				7'd25 : stepsize <= 16'd9 ; // freq 34
				7'd26 : stepsize <= 16'd10 ; // freq 36
				7'd27 : stepsize <= 16'd10 ; // freq 38
				7'd28 : stepsize <= 16'd11 ; // freq 41
				7'd29 : stepsize <= 16'd12 ; // freq 43
				7'd30 : stepsize <= 16'd12 ; // freq 46
				7'd31 : stepsize <= 16'd13 ; // freq 48
				7'd32 : stepsize <= 16'd14 ; // freq 51
				7'd33 : stepsize <= 16'd15 ; // freq 55
				7'd34 : stepsize <= 16'd16 ; // freq 58
				7'd35 : stepsize <= 16'd17 ; // freq 61
				7'd36 : stepsize <= 16'd18 ; // freq 65
				7'd37 : stepsize <= 16'd19 ; // freq 69
				7'd38 : stepsize <= 16'd20 ; // freq 73
				7'd39 : stepsize <= 16'd21 ; // freq 77
				7'd40 : stepsize <= 16'd22 ; // freq 82
				7'd41 : stepsize <= 16'd23 ; // freq 87
				7'd42 : stepsize <= 16'd25 ; // freq 92
				7'd43 : stepsize <= 16'd26 ; // freq 97
				7'd44 : stepsize <= 16'd28 ; // freq 103
				7'd45 : stepsize <= 16'd30 ; // freq 110
				7'd46 : stepsize <= 16'd31 ; // freq 116
				7'd47 : stepsize <= 16'd33 ; // freq 123
				7'd48 : stepsize <= 16'd35 ; // freq 130
				7'd49 : stepsize <= 16'd37 ; // freq 138
				7'd50 : stepsize <= 16'd39 ; // freq 146
				7'd51 : stepsize <= 16'd42 ; // freq 155
				7'd52 : stepsize <= 16'd44 ; // freq 164
				7'd53 : stepsize <= 16'd47 ; // freq 174
				7'd54 : stepsize <= 16'd50 ; // freq 184
				7'd55 : stepsize <= 16'd53 ; // freq 195
				7'd56 : stepsize <= 16'd56 ; // freq 207
				7'd57 : stepsize <= 16'd59 ; // freq 220
				7'd58 : stepsize <= 16'd63 ; // freq 233
				7'd59 : stepsize <= 16'd66 ; // freq 246
				7'd60 : stepsize <= 16'd70 ; // freq 261
				7'd61 : stepsize <= 16'd74 ; // freq 277
				7'd62 : stepsize <= 16'd79 ; // freq 293
				7'd63 : stepsize <= 16'd84 ; // freq 311
				7'd64 : stepsize <= 16'd88 ; // freq 329
				7'd65 : stepsize <= 16'd94 ; // freq 349
				7'd66 : stepsize <= 16'd99 ; // freq 369
				7'd67 : stepsize <= 16'd105 ; // freq 391
				7'd68 : stepsize <= 16'd111 ; // freq 415
				7'd69 : stepsize <= 16'd118 ; // freq 440
				7'd70 : stepsize <= 16'd125 ; // freq 466
				7'd71 : stepsize <= 16'd133 ; // freq 493
				7'd72 : stepsize <= 16'd140 ; // freq 523
				7'd73 : stepsize <= 16'd149 ; // freq 554
				7'd74 : stepsize <= 16'd158 ; // freq 587
				7'd75 : stepsize <= 16'd167 ; // freq 622
				7'd76 : stepsize <= 16'd177 ; // freq 659
				7'd77 : stepsize <= 16'd187 ; // freq 698
				7'd78 : stepsize <= 16'd199 ; // freq 739
				7'd79 : stepsize <= 16'd210 ; // freq 783
				7'd80 : stepsize <= 16'd223 ; // freq 830
				7'd81 : stepsize <= 16'd236 ; // freq 880
				7'd82 : stepsize <= 16'd250 ; // freq 932
				7'd83 : stepsize <= 16'd265 ; // freq 987
				7'd84 : stepsize <= 16'd281 ; // freq 1046
				7'd85 : stepsize <= 16'd298 ; // freq 1108
				7'd86 : stepsize <= 16'd315 ; // freq 1174
				7'd87 : stepsize <= 16'd334 ; // freq 1244
				7'd88 : stepsize <= 16'd354 ; // freq 1318
				7'd89 : stepsize <= 16'd375 ; // freq 1396
				7'd90 : stepsize <= 16'd397 ; // freq 1479
				7'd91 : stepsize <= 16'd421 ; // freq 1567
				7'd92 : stepsize <= 16'd446 ; // freq 1661
				7'd93 : stepsize <= 16'd472 ; // freq 1760
				7'd94 : stepsize <= 16'd501 ; // freq 1864
				7'd95 : stepsize <= 16'd530 ; // freq 1975
				7'd96 : stepsize <= 16'd562 ; // freq 2093
				7'd97 : stepsize <= 16'd595 ; // freq 2217
				7'd98 : stepsize <= 16'd631 ; // freq 2349
				7'd99 : stepsize <= 16'd668 ; // freq 2489
				7'd100 : stepsize <= 16'd708 ; // freq 2637
				7'd101 : stepsize <= 16'd750 ; // freq 2793
				7'd102 : stepsize <= 16'd795 ; // freq 2959
				7'd103 : stepsize <= 16'd842 ; // freq 3135
				7'd104 : stepsize <= 16'd892 ; // freq 3322
				7'd105 : stepsize <= 16'd945 ; // freq 3520
				7'd106 : stepsize <= 16'd1001 ; // freq 3729
				7'd107 : stepsize <= 16'd1061 ; // freq 3951
				7'd108 : stepsize <= 16'd1124 ; // freq 4186
				7'd109 : stepsize <= 16'd1190 ; // freq 4434
				7'd110 : stepsize <= 16'd1261 ; // freq 4698
				7'd111 : stepsize <= 16'd1336 ; // freq 4978
				7'd112 : stepsize <= 16'd1416 ; // freq 5274
				7'd113 : stepsize <= 16'd1500 ; // freq 5587
				7'd114 : stepsize <= 16'd1589 ; // freq 5919
				7'd115 : stepsize <= 16'd1684 ; // freq 6271
				7'd116 : stepsize <= 16'd1784 ; // freq 6644
				7'd117 : stepsize <= 16'd1890 ; // freq 7040
				7'd118 : stepsize <= 16'd2002 ; // freq 7458
				7'd119 : stepsize <= 16'd2121 ; // freq 7902
				7'd120 : stepsize <= 16'd2247 ; // freq 8372
				7'd121 : stepsize <= 16'd2381 ; // freq 8869
				7'd122 : stepsize <= 16'd2523 ; // freq 9397
				7'd123 : stepsize <= 16'd2673 ; // freq 9956
				7'd124 : stepsize <= 16'd2831 ; // freq 10548
				7'd125 : stepsize <= 16'd3000 ; // freq 11175
				7'd126 : stepsize <= 16'd3178 ; // freq 11839
				7'd127 : stepsize <= 16'd3367 ; // freq 12543

			endcase
		
	end
	
endmodule

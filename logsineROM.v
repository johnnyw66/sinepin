/*
import math ;


# Quarter Log Sine
for i in range(256):
    y = round((-256.0*math.log(math.sin((i + 0.5)*math.pi/512.0))/math.log(2.0))) ;
    print("8'd%d :  logsn <= %d ;" % (i,y)) ;


# Power logsine (base 2)

for i in range(256):
    y = round((math.pow(2,i / 256.0) - 1) * 1024) ;
    print("8'd%d : sinpow <= %d ;"  % (i,y)) ;

# Quarter Sine

for i in range(256):
    y = round(1024 * math.sin(i * math.pi/(4*256))) ;
    print("8'd%d :  qsin <= %d ;" % (i,y)) ;


*/

module logsineROM (
	input clk,
	input [7:0] address,
	output  reg [15:0] logsn
);


always @(posedge clk)
begin
	case(address)
				8'd0 :  logsn <= 2137 ;
				8'd1 :  logsn <= 1731 ;
				8'd2 :  logsn <= 1543 ;
				8'd3 :  logsn <= 1419 ;
				8'd4 :  logsn <= 1326 ;
				8'd5 :  logsn <= 1252 ;
				8'd6 :  logsn <= 1190 ;
				8'd7 :  logsn <= 1137 ;
				8'd8 :  logsn <= 1091 ;
				8'd9 :  logsn <= 1050 ;
				8'd10 :  logsn <= 1013 ;
				8'd11 :  logsn <= 979 ;
				8'd12 :  logsn <= 949 ;
				8'd13 :  logsn <= 920 ;
				8'd14 :  logsn <= 894 ;
				8'd15 :  logsn <= 869 ;
				8'd16 :  logsn <= 846 ;
				8'd17 :  logsn <= 825 ;
				8'd18 :  logsn <= 804 ;
				8'd19 :  logsn <= 785 ;
				8'd20 :  logsn <= 767 ;
				8'd21 :  logsn <= 749 ;
				8'd22 :  logsn <= 732 ;
				8'd23 :  logsn <= 717 ;
				8'd24 :  logsn <= 701 ;
				8'd25 :  logsn <= 687 ;
				8'd26 :  logsn <= 672 ;
				8'd27 :  logsn <= 659 ;
				8'd28 :  logsn <= 646 ;
				8'd29 :  logsn <= 633 ;
				8'd30 :  logsn <= 621 ;
				8'd31 :  logsn <= 609 ;
				8'd32 :  logsn <= 598 ;
				8'd33 :  logsn <= 587 ;
				8'd34 :  logsn <= 576 ;
				8'd35 :  logsn <= 566 ;
				8'd36 :  logsn <= 556 ;
				8'd37 :  logsn <= 546 ;
				8'd38 :  logsn <= 536 ;
				8'd39 :  logsn <= 527 ;
				8'd40 :  logsn <= 518 ;
				8'd41 :  logsn <= 509 ;
				8'd42 :  logsn <= 501 ;
				8'd43 :  logsn <= 492 ;
				8'd44 :  logsn <= 484 ;
				8'd45 :  logsn <= 476 ;
				8'd46 :  logsn <= 468 ;
				8'd47 :  logsn <= 461 ;
				8'd48 :  logsn <= 453 ;
				8'd49 :  logsn <= 446 ;
				8'd50 :  logsn <= 439 ;
				8'd51 :  logsn <= 432 ;
				8'd52 :  logsn <= 425 ;
				8'd53 :  logsn <= 418 ;
				8'd54 :  logsn <= 411 ;
				8'd55 :  logsn <= 405 ;
				8'd56 :  logsn <= 399 ;
				8'd57 :  logsn <= 392 ;
				8'd58 :  logsn <= 386 ;
				8'd59 :  logsn <= 380 ;
				8'd60 :  logsn <= 375 ;
				8'd61 :  logsn <= 369 ;
				8'd62 :  logsn <= 363 ;
				8'd63 :  logsn <= 358 ;
				8'd64 :  logsn <= 352 ;
				8'd65 :  logsn <= 347 ;
				8'd66 :  logsn <= 341 ;
				8'd67 :  logsn <= 336 ;
				8'd68 :  logsn <= 331 ;
				8'd69 :  logsn <= 326 ;
				8'd70 :  logsn <= 321 ;
				8'd71 :  logsn <= 316 ;
				8'd72 :  logsn <= 311 ;
				8'd73 :  logsn <= 307 ;
				8'd74 :  logsn <= 302 ;
				8'd75 :  logsn <= 297 ;
				8'd76 :  logsn <= 293 ;
				8'd77 :  logsn <= 289 ;
				8'd78 :  logsn <= 284 ;
				8'd79 :  logsn <= 280 ;
				8'd80 :  logsn <= 276 ;
				8'd81 :  logsn <= 271 ;
				8'd82 :  logsn <= 267 ;
				8'd83 :  logsn <= 263 ;
				8'd84 :  logsn <= 259 ;
				8'd85 :  logsn <= 255 ;
				8'd86 :  logsn <= 251 ;
				8'd87 :  logsn <= 248 ;
				8'd88 :  logsn <= 244 ;
				8'd89 :  logsn <= 240 ;
				8'd90 :  logsn <= 236 ;
				8'd91 :  logsn <= 233 ;
				8'd92 :  logsn <= 229 ;
				8'd93 :  logsn <= 226 ;
				8'd94 :  logsn <= 222 ;
				8'd95 :  logsn <= 219 ;
				8'd96 :  logsn <= 215 ;
				8'd97 :  logsn <= 212 ;
				8'd98 :  logsn <= 209 ;
				8'd99 :  logsn <= 205 ;
				8'd100 :  logsn <= 202 ;
				8'd101 :  logsn <= 199 ;
				8'd102 :  logsn <= 196 ;
				8'd103 :  logsn <= 193 ;
				8'd104 :  logsn <= 190 ;
				8'd105 :  logsn <= 187 ;
				8'd106 :  logsn <= 184 ;
				8'd107 :  logsn <= 181 ;
				8'd108 :  logsn <= 178 ;
				8'd109 :  logsn <= 175 ;
				8'd110 :  logsn <= 172 ;
				8'd111 :  logsn <= 169 ;
				8'd112 :  logsn <= 167 ;
				8'd113 :  logsn <= 164 ;
				8'd114 :  logsn <= 161 ;
				8'd115 :  logsn <= 159 ;
				8'd116 :  logsn <= 156 ;
				8'd117 :  logsn <= 153 ;
				8'd118 :  logsn <= 151 ;
				8'd119 :  logsn <= 148 ;
				8'd120 :  logsn <= 146 ;
				8'd121 :  logsn <= 143 ;
				8'd122 :  logsn <= 141 ;
				8'd123 :  logsn <= 138 ;
				8'd124 :  logsn <= 136 ;
				8'd125 :  logsn <= 134 ;
				8'd126 :  logsn <= 131 ;
				8'd127 :  logsn <= 129 ;
				8'd128 :  logsn <= 127 ;
				8'd129 :  logsn <= 125 ;
				8'd130 :  logsn <= 122 ;
				8'd131 :  logsn <= 120 ;
				8'd132 :  logsn <= 118 ;
				8'd133 :  logsn <= 116 ;
				8'd134 :  logsn <= 114 ;
				8'd135 :  logsn <= 112 ;
				8'd136 :  logsn <= 110 ;
				8'd137 :  logsn <= 108 ;
				8'd138 :  logsn <= 106 ;
				8'd139 :  logsn <= 104 ;
				8'd140 :  logsn <= 102 ;
				8'd141 :  logsn <= 100 ;
				8'd142 :  logsn <= 98 ;
				8'd143 :  logsn <= 96 ;
				8'd144 :  logsn <= 94 ;
				8'd145 :  logsn <= 92 ;
				8'd146 :  logsn <= 91 ;
				8'd147 :  logsn <= 89 ;
				8'd148 :  logsn <= 87 ;
				8'd149 :  logsn <= 85 ;
				8'd150 :  logsn <= 83 ;
				8'd151 :  logsn <= 82 ;
				8'd152 :  logsn <= 80 ;
				8'd153 :  logsn <= 78 ;
				8'd154 :  logsn <= 77 ;
				8'd155 :  logsn <= 75 ;
				8'd156 :  logsn <= 74 ;
				8'd157 :  logsn <= 72 ;
				8'd158 :  logsn <= 70 ;
				8'd159 :  logsn <= 69 ;
				8'd160 :  logsn <= 67 ;
				8'd161 :  logsn <= 66 ;
				8'd162 :  logsn <= 64 ;
				8'd163 :  logsn <= 63 ;
				8'd164 :  logsn <= 62 ;
				8'd165 :  logsn <= 60 ;
				8'd166 :  logsn <= 59 ;
				8'd167 :  logsn <= 57 ;
				8'd168 :  logsn <= 56 ;
				8'd169 :  logsn <= 55 ;
				8'd170 :  logsn <= 53 ;
				8'd171 :  logsn <= 52 ;
				8'd172 :  logsn <= 51 ;
				8'd173 :  logsn <= 49 ;
				8'd174 :  logsn <= 48 ;
				8'd175 :  logsn <= 47 ;
				8'd176 :  logsn <= 46 ;
				8'd177 :  logsn <= 45 ;
				8'd178 :  logsn <= 43 ;
				8'd179 :  logsn <= 42 ;
				8'd180 :  logsn <= 41 ;
				8'd181 :  logsn <= 40 ;
				8'd182 :  logsn <= 39 ;
				8'd183 :  logsn <= 38 ;
				8'd184 :  logsn <= 37 ;
				8'd185 :  logsn <= 36 ;
				8'd186 :  logsn <= 35 ;
				8'd187 :  logsn <= 34 ;
				8'd188 :  logsn <= 33 ;
				8'd189 :  logsn <= 32 ;
				8'd190 :  logsn <= 31 ;
				8'd191 :  logsn <= 30 ;
				8'd192 :  logsn <= 29 ;
				8'd193 :  logsn <= 28 ;
				8'd194 :  logsn <= 27 ;
				8'd195 :  logsn <= 26 ;
				8'd196 :  logsn <= 25 ;
				8'd197 :  logsn <= 24 ;
				8'd198 :  logsn <= 23 ;
				8'd199 :  logsn <= 23 ;
				8'd200 :  logsn <= 22 ;
				8'd201 :  logsn <= 21 ;
				8'd202 :  logsn <= 20 ;
				8'd203 :  logsn <= 20 ;
				8'd204 :  logsn <= 19 ;
				8'd205 :  logsn <= 18 ;
				8'd206 :  logsn <= 17 ;
				8'd207 :  logsn <= 17 ;
				8'd208 :  logsn <= 16 ;
				8'd209 :  logsn <= 15 ;
				8'd210 :  logsn <= 15 ;
				8'd211 :  logsn <= 14 ;
				8'd212 :  logsn <= 13 ;
				8'd213 :  logsn <= 13 ;
				8'd214 :  logsn <= 12 ;
				8'd215 :  logsn <= 12 ;
				8'd216 :  logsn <= 11 ;
				8'd217 :  logsn <= 10 ;
				8'd218 :  logsn <= 10 ;
				8'd219 :  logsn <= 9 ;
				8'd220 :  logsn <= 9 ;
				8'd221 :  logsn <= 8 ;
				8'd222 :  logsn <= 8 ;
				8'd223 :  logsn <= 7 ;
				8'd224 :  logsn <= 7 ;
				8'd225 :  logsn <= 7 ;
				8'd226 :  logsn <= 6 ;
				8'd227 :  logsn <= 6 ;
				8'd228 :  logsn <= 5 ;
				8'd229 :  logsn <= 5 ;
				8'd230 :  logsn <= 5 ;
				8'd231 :  logsn <= 4 ;
				8'd232 :  logsn <= 4 ;
				8'd233 :  logsn <= 4 ;
				8'd234 :  logsn <= 3 ;
				8'd235 :  logsn <= 3 ;
				8'd236 :  logsn <= 3 ;
				8'd237 :  logsn <= 2 ;
				8'd238 :  logsn <= 2 ;
				8'd239 :  logsn <= 2 ;
				8'd240 :  logsn <= 2 ;
				8'd241 :  logsn <= 1 ;
				8'd242 :  logsn <= 1 ;
				8'd243 :  logsn <= 1 ;
				8'd244 :  logsn <= 1 ;
				8'd245 :  logsn <= 1 ;
				8'd246 :  logsn <= 1 ;
				8'd247 :  logsn <= 1 ;
				8'd248 :  logsn <= 0 ;
				8'd249 :  logsn <= 0 ;
				8'd250 :  logsn <= 0 ;
				8'd251 :  logsn <= 0 ;
				8'd252 :  logsn <= 0 ;
				8'd253 :  logsn <= 0 ;
				8'd254 :  logsn <= 0 ;
				8'd255 :  logsn <= 0 ;

	
	endcase

end


endmodule

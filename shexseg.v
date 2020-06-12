
`define _Asseg 8'd128
`define _Bsseg 8'd64
`define _Csseg 8'd32
`define _Dsseg 8'd8
`define _Esseg 8'd4
`define _Fsseg 8'd2
`define _Gsseg 8'd1
`define _Dotsseg 8'd16

`define SDIGIT0	(`_Asseg | `_Bsseg | `_Csseg | `_Dsseg | `_Esseg | `_Fsseg)
`define SDIGIT1	(`_Bsseg | `_Csseg)
`define SDIGIT2	(`_Asseg | `_Bsseg | `_Dsseg | `_Esseg | `_Gsseg)
`define SDIGIT3	(`_Asseg | `_Bsseg | `_Csseg | `_Dsseg | `_Gsseg)
`define SDIGIT4	(`_Bsseg | `_Csseg | `_Fsseg | `_Gsseg)
`define SDIGIT5	(`_Asseg | `_Fsseg | `_Gsseg | `_Csseg | `_Dsseg)
`define SDIGIT6	(`_Asseg | `_Csseg | `_Dsseg | `_Esseg | `_Fsseg | `_Gsseg)
`define SDIGIT7	(`_Asseg | `_Bsseg | `_Csseg )
`define SDIGIT8	(`_Asseg | `_Bsseg | `_Csseg | `_Dsseg | `_Esseg | `_Fsseg | `_Gsseg)
`define SDIGIT9	(`_Asseg | `_Bsseg | `_Csseg | `_Dsseg | `_Fsseg | `_Gsseg)
`define SDIGITA	(`_Asseg | `_Bsseg | `_Csseg | `_Esseg | `_Fsseg | `_Gsseg)
`define SDIGITB	(`_Csseg | `_Dsseg | `_Esseg | `_Fsseg | `_Gsseg)
`define SDIGITC	(`_Asseg | `_Dsseg | `_Esseg | `_Fsseg)
`define SDIGITD	(`_Bsseg | `_Csseg | `_Dsseg | `_Esseg | `_Gsseg)
`define SDIGITE	(`_Asseg |  `_Esseg | `_Dsseg | `_Fsseg | `_Gsseg)
`define SDIGITF	(`_Asseg |  `_Esseg | `_Fsseg | `_Gsseg)

module shexseg
(
 input [3:0] value,
 input [1:0] enable,
 input dot,
 output  [7:0] osegment  
);


reg [7:0] segment ;


always @(value,enable)
begin
		if (enable[0]) begin
		
			case (value)
					4'd0: segment = `SDIGIT0 ;
					4'd1: segment = `SDIGIT1 ;
					4'd2: segment = `SDIGIT2 ;
					4'd3: segment = `SDIGIT3 ;
					4'd4: segment = `SDIGIT4 ;
					4'd5: segment = `SDIGIT5 ;
					4'd6: segment = `SDIGIT6 ;
					4'd7: segment = `SDIGIT7 ;
					4'd8: segment = `SDIGIT8 ;
					4'd9: segment = `SDIGIT9 ;
					4'd10: segment = `SDIGITA ;
					4'd11: segment = `SDIGITB ;
					4'd12: segment = `SDIGITC ;
					4'd13: segment = `SDIGITD ;
					4'd14: segment = `SDIGITE ;
					4'd15: segment = `SDIGITF ;
			endcase
		end
	else
		segment = 8'd0 ;

end
assign osegment = segment | (dot & enable[1] ?  `_Dotsseg : 8'd0) ;
endmodule




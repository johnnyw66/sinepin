import math ;

fpmult = 32768 ;		#16bit
for i in range (256):
    a = i ;	
    sv = ( 1 + math.sin(a * math.pi / 512.0)) ;
    fpsv =  int(fpmult * sv) ;
    # print("%d %d %d" % (i,fpsv, int(fpsv / 256))) ;
    print("8'd%d : svalue <= 16'd%d ;" % (i,fpsv)) ;


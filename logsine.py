import math ;

# Quarter Log Sine
for i in range(256):
    y = round((-256.0*math.log(math.sin((i + 0.5)*math.pi/512.0))/math.log(2.0))) ;
    print("8'd%d :  logsn <= %d ;" % (i,y)) ;



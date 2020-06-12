import math ;

# Power logsine (base 2)

for i in range(256):
    y = round((math.pow(2,i / 256.0) - 1) * 1024) ;
    print("8'd%d : sinpow <= %d ;"  % (i,y)) ;


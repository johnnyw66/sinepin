import math ;

#_CALCSTEP(FREQ) ((0.0 + ((FREQ * FPMULT * SINEROMSIZE )/BOARD_CLOCKSPEED)))

baseClock = 50000000.0 ;
sineromsize = 1024.0 ;
fpmult = 65536.0 ;

baseFreq = 440 ;	
for i in range (128):
    freq = (baseFreq / 32.0) * (pow(2.0,((i - 9.0) / 12.0))) ;
    step = int(0.5 + (freq * fpmult * sineromsize / baseClock)) ;
    print("7'd%d : stepsize <= 16'd%d ; // freq %d" % (i,step,freq)) ;

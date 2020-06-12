
nil = 0
restnote = 1

romch1 = [
                       76,76,nil,76,nil,72,76,nil,79,nil,nil,nil,nil,nil,nil,nil,


                       72,nil,nil,67,nil,nil,64,nil,nil,69,nil,71,nil,70,69,nil,
                       67,76,79,
                       81,nil,77,79, nil,76,nil,72,74,71,nil,nil,

                       72,nil,nil,67,nil,nil,64,nil,nil,69,nil,71,nil,70,69,nil,
                       67,76,79,
                       81,nil,77,79, nil,76,nil,72,74,71,nil,nil,

                       nil,nil,79,78,77,75,nil,76,
                       nil,68,69,72,nil,69,72,74,
                       nil,nil,79,78,77,75,nil,76,
                       nil,84,nil,84,84,nil,nil,nil,
                       nil,nil,79,78,77,75,nil,76,
                       nil,68,69,72,nil,69,72,74,
                       nil,nil,75,nil,nil,74,nil,nil,
                       72,nil,nil,nil,nil,nil,nil,nil,
                       nil,nil,79,78,77,75,nil,76,
                       nil,68,69,72,nil,69,72,74,
                       nil,nil,79,78,77,75,nil,76,
                       nil,84,nil,84,84,nil,nil,nil,
                       nil,nil,79,78,77,75,nil,76,
                       nil,68,69,72,nil,69,72,74,
                       nil,nil,75,nil,nil,74,nil,nil,
                       72,nil,nil,nil,nil,nil,nil,nil,



                       72,72,nil,72,nil,72,74,nil,
                       76,72,nil,69,67,nil,nil,nil,
                       72,72,nil,72,nil,72,74,76,
                       nil,nil,nil,nil,nil,nil,nil,nil,
                       72,72,nil,72,nil,72,74,nil,
                       76,72,nil,69,67,nil,nil,nil,
                       76,76,nil,76,nil,72,76,nil,
                       79,nil,nil,nil,nil,nil,nil,nil,


                       76,72,nil,67,nil,nil,68,nil,69,77,nil,77,69,nil,nil,nil,
                       71,81,81,81,79,77,
                       76,72,nil,69,67,nil,nil,nil,
                       76,72,nil,67,nil,nil,68,nil,69,77,nil,77,69,nil,nil,nil,71,77,nil,77,
                       77,76,74,
  79,76,nil,76,72,nil,nil,nil]


romch2 = [
                         66,66,nil,66,nil,66,66,nil,
                       71,nil,nil,nil,67,nil,nil,nil,

                       64,nil,nil,60,nil,nil,55,nil,
                       nil,60,nil,62,nil,61,60,nil,
                       60,67,71,
                       72,nil,69,71,nil,69,nil,64,
                       65,62,nil,nil,

                       64,nil,nil,60,nil,nil,55,nil,
                       nil,60,nil,62,nil,61,60,nil,
                       60,67,71,
                       72,nil,69,71,nil,69,nil,64,
                       65,62,nil,nil,


                       nil,nil,76,75,74,71,nil,72,
                       nil,64,65,67,nil,60,64,65,
                       nil,nil,76,75,74,71,nil,72,
                       nil,77,nil,77,77,nil,nil,nil,
                       nil,nil,76,75,74,71,nil,72,
                       nil,64,65,67,nil,60,64,65,
                       nil,nil,68,nil,nil,65,nil,nil,
                       64,nil,nil,nil,nil,nil,nil,nil,

                       nil,nil,76,75,74,71,nil,72,
                       nil,64,65,67,nil,60,64,65,
                       nil,nil,76,75,74,71,nil,72,
                       nil,77,nil,77,77,nil,nil,nil,
                       nil,nil,76,75,74,71,nil,72,
                       nil,64,65,67,nil,60,64,65,
                       nil,nil,68,nil,nil,65,nil,nil,
                       64,nil,nil,nil,nil,nil,nil,nil,


                       68,68,nil,68,nil,68,70,nil,
                       67,64,nil,64,60,nil,nil,nil,
                       68,68,nil,68,nil,68,70,67,
                       nil,nil,nil,nil,nil,nil,nil,nil,
                       68,68,nil,68,nil,68,70,nil,
                       67,64,nil,64,60,nil,nil,nil,
                       66,66,nil,66,nil,66,66,nil,
                       71,nil,nil,nil,67,nil,nil,nil,

                       72,69,nil,64,nil,nil,64,nil,
                       65,72,nil,72,65,nil,nil,nil,
                       67,77,77,77,76,74,
                       72,69,nil,65,64,nil,nil,nil,
                       72,69,nil,64,nil,nil,64,nil,
                       65,72,nil,72,65,nil,nil,nil,
                       67,74,nil,74,
                       74,72,71,
  72,nil,nil,nil,nil,nil,nil,nil]

print("# ROM 1  Number of Elements = %d" %( len(romch1)))
addr = 0
for note in romch1:
  print("%d: note <= 8'd%d ;" % (addr,note if note != nil else restnote ))
  addr = addr + 1

#print("Num of Elements = %d" %( len(romch1)))


print("# ROM 2  Number of Elements = %d" %( len(romch2)))
addr = 0
for note in romch2:
  print("%d: note <= 8'd%d ;" % (addr,note if note != nil else restnote ))
  addr = addr + 1




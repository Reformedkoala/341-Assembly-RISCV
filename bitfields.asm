main:
li t1, 1
li t2, 2
li t3, 32
li t4, 8
li a7, 5
ecall
mv s1, a0

li a7, 5
ecall
mv s2, a0

li a7, 5
ecall
mv s3, a0

li s4, 0
li s5, 0

j loopsets

#index bits
loopsets:
  # Check if the value is less than or equal to 1
  blt s2, t1, loopblock
  beq s2, t1, loopblock
  div s2, s2, t2
  addi s4,s4,1
  j loopsets
    
#offset bits
loopblock:
  blt s3, t1, done
  beq s3, t1, done
  div s3, s3, t2
  addi s5,s5,1
  j loopblock

done:
sub s1, s1, s4
sub s1, s1, s5
mv a0, s1
li a7, 1
ecall

mv a0, t3
li a7, 11
ecall

mv a0, s4
li a7, 1
ecall

mv a0, t3
li a7, 11
ecall

mv a0, s5
li a7, 1
ecall
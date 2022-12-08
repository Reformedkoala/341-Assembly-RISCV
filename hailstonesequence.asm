#Necessary Syscalls
#1 - PrintInt
#5 - ReadInt
#11 - PrintChar
main:
li s2, 32
li s3, 44
li a7, 5
ecall
li a7, 1
ecall
addi t0, zero, 1
loop:
addi t1, zero, 1
beq t1, a0, out	
and t2, t1, a0	
beq t2, t1, isOdd
isEven:
srli a0, a0, 1
mv s1, a0
li a7, 11
mv a0, s3
ecall
li a7, 11
mv a0, s2
ecall
mv a0, s1
li a7, 1
ecall
beq zero, zero, skip
isOdd:
addi t2, zero, 3
mul a0, a0, t2
addi a0, a0, 1
mv s1, a0
li a7, 11
mv a0, s3
ecall
li a7, 11
mv a0, s2
ecall
mv a0, s1
li a7, 1
ecall
skip:
addi t0, t0, 1
beq zero, zero, loop
out:
add a1, zero, t0

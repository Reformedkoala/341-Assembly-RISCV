#Necessary Syscalls
#1 - PrintInt
#5 - ReadInt
#11 - PrintChar
main:
li a7, 5
ecall
mv s1, a0

li a7, 5
ecall
mv s2, a0

li a7, 5
ecall
mv s3, a0

li t0, -1

beq s1, t0, rate
beq s2, t0, cycleL
beq s3, t0, timeL

timeL:
div a0, s2, s1
li a7, 1
ecall
ret

cycleL:
mul a0, s3, s1
li a7, 1
ecall
ret

rate:
div a0, s2, s3
li a7, 1
ecall
ret
#Necessary Syscalls
#1 - PrintInt
#5 - ReadInt

main:
li t0, 100
li a7, 5
ecall
mv s1, a0

li a7, 5
ecall
mv s2, a0

li a7, 5
ecall
mv s3, a0

add s4, s1, s2
add s4, s4, s3

beq s4, t0, correct
wrong:
li a7, 1
li a0, 0
ecall
ret
correct:
li a7, 1
li a0, 1
ecall
ret
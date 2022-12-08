#Necessary Syscalls
#1 - PrintInt
#5 - ReadInt

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

li a7, 5
ecall
mv s4, a0

div s5, s1, s2
div s6, s3, s4

div a0, s5, s6
li a7, 1
ecall
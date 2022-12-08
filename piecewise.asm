#Necessary Syscalls
#1 - PrintInt
#5 - ReadInt

.text
main:
li a7, 5
ecall
mv s1, a0
li t1, 3

blt s1, t1, small
bgeu s1, t1, large

small:
addi s1, s1, 3
mv a0, s1
li a7, 1
ecall
ret
large:
li t4, 2
mul s1, s1, t4
mv a0, s1
li a7, 1
ecall
ret
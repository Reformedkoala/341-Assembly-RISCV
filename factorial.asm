#Necessary Syscalls
#1 - PrintInt
#5 - ReadInt

li a7, 5
ecall
mv s1, a0
li t1, 1
loop:
beq s1, zero, end_loop
mul t1, t1, s1
addi s1, s1, -1
j loop

end_loop:
mv a0, t1
li a7, 1
ecall
ret
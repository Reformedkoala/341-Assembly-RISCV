#Necessary Syscalls
#1 - PrintInt
#5 - ReadInt (Provided)

.data
input:  .space 400

.text
la s0, input
start:
    addi a7, zero, 5
    ecall

    sw a0, 0(s0)
    addi s0, s0, 4

    bgt t1, a0, next
    mv t1, a0
next:
    addi t2, zero, -1
    bne t2, a0, start

    mv a0, t1
    addi a7, zero, 1
    ecall

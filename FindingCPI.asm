.data
arrperc:      .space 400
arrcount:      .space 400
.text
main:
li t2, 32

li a7, 5
ecall
mv s2, a0
add s3, s2, zero
add s4, s2, zero

beq s2, zero, end

la s6, arrperc
la s7, arrcount
la s8, arrperc
la s9, arrcount

loopinput:
beq s2, zero, loopinput2

li a7, 5
ecall

sw a0, 0(s6)
addi s6, s6, 4
addi s2, s2, -1
j loopinput

loopinput2:
beq s3, zero, loopcalculate

li a7, 5
ecall

sw a0, 0(s7)
addi s7, s7, 4
addi s3, s3, -1
j loopinput2

loopcalculate:
beq s4, zero, end
lw t3, 0(s8)
lw t4, 0(s9)
mul t5, t4, t3

add t0, t0, t5
addi s4,s4, -1
addi s8,s8, 4
addi s9,s9, 4
j loopcalculate
end:
li a7, 1
mv a0, t0
ecall

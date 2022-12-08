#Necessary Syscalls
#1 - PrintInt
#5 - ReadInt
#11 - PrintChar
main:
li s8, 0
li s9, 32
li a7, 5
ecall
mv s2, a0
beq s2, zero, end
li a7, 5
ecall
j hailstone_lengther


hailstone_lengther:
	#a0 is the input number
	#a1 is the output
	addi t0, zero, 1
	
	loop:
		addi t1, zero, 1
		beq t1, a0, out
		
		and t2, t1, a0
		
		beq t2, t1, isOdd
		isEven:
			srli a0, a0, 1
			beq zero, zero, skip
		isOdd:
			addi t2, zero, 3
			mul a0, a0, t2
			addi a0, a0, 1
		skip:
		
		addi t0, t0, 1
		beq zero, zero, loop
	out:
	add a1, zero, t0
	j end

end:
beq s8, s9, actual_end2
addi s2, s2, -1
li a7, 1
mv a0, a1
ecall
li a7, 5
ecall
li s8, 32
j hailstone_lengther

actual_end:
li a7, 1
mv a0, a1
ecall

actual_end2:
beq s2, zero, actual_end
addi s2, s2, -1
li a7, 11
mv a0, s9
ecall
li a7, 1
mv a0, a1
ecall
li a7, 5
ecall
j hailstone_lengther
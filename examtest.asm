main:
	addi s0, zero, 0
	addi s1, zero, 5
	addi s2, zero, 6
	addi s3, zero, 7
	call foo
	mv a0, s0
	li a7, 1
	ecall
	mv a0, zero 
	li a7, 93 
	ecall 

foo:
	addi t2, zero, 3
	addi t3, zero, 4
	add s1, s1, s1
	mul s2, s2, t2
	mul s3, s3, t3
	add t4, s1, s2
	add t4, t4, s3
	mv s0, t4
	ret
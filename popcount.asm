.data
word:   .asciz "Input an integer: "

.text

count_ones:
li a7, 4
la a0, word
ecall
li a7, 5
ecall
mv s1, a0
bne s1, zero, count
j done

count:
addi    t1, t1, 1     
andi    t2, s1, 1
srli    s1, s1, 1
beq 	t2, zero, other      
bne     s1, zero, count             

other:     
andi    t2, s1, 1
srli    s1, s1, 1
bne     s1, zero, count

done:
li a7, 1
add a0, t1, zero
ecall


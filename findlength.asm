#Necessary Syscalls
#1 - PrintInt
#8 - ReadString (Provided)

.data
word:   .asciz "Input a string: "
string: .space 0x80000

.text
main:
addi a1, zero, 99
addi a7, zero, 8
ecall
# your code goes below this line
mv t0, a0
li a0, 0

li a3, 32
li a4, 10 

loop:
  lb t1, 0(t0)
  beq t1, zero, end_loop
  addi t0, t0, 1
  bne t1, a3, not_space_or_newline
  addi a0, a0, 1
  j loop

not_space_or_newline:
  bne t1, a4, not_newline
  addi a0, a0, 1
  j loop

not_newline:
  addi a0, a0, 1
  j loop

end_loop:
addi a0, a0, -1
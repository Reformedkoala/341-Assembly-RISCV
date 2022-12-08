#Necessary Syscalls
#1 - PrintInt
#5 - ReadInt

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

li a7, 5 
ecall     
mv s5, a0 

li a7, 5 
ecall     
mv s6, a0  

beq s1, s5, output1
beq s1, s6, output2

j end



output1:
beq s1, zero, end
li a7, 1
li a0, 1
ecall
beq s1, s6, output3
ret

output2:
li a7, 1
li a0, 2
ecall
ret

output3:
li a7, 11
li a0, 32
ecall
li a7, 1
li a0, 2
ecall
ret

end:
li a7, 1
li a0, -1
ecall
ret
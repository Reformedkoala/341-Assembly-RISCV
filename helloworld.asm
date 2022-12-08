# PROGRAM: Hello, World!
.data # Data declaration section
hello_msg: .asciz "\nHello, World!\n"
.text # Assembly language instructions
main: # Start of code section
li a7, 4 # system call code for printing string = 4
la a0, hello_msg # load address of string to be printed into $a0
ecall # call operating system to perform print operation
li a7, 10
ecall

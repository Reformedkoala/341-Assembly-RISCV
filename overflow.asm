.data
  # Data section for storing variables

.text
  li a7, 5
  ecall
  mv s1, a0
  li a7, 5
  ecall
  mv s2, a0
  # Code section
  addi t1, zero, 0 # Initialize x1 to 0 (used for storing the result)
  add t1, t1, s1 # Add the first integer to x1
  add t1, t1, s2 # Add the second integer to x1

  bge t1, x0, no_overflow # Branch to "no_overflow" if x1 >= 0
  addi t1, x0, 1 # Set x1 to 1 to indicate overflow
  j end # Jump to the "end" label

no_overflow:
  # Code to execute if no overflow occurred
  addi t1, x0, 0 # Set x1 to 0 to indicate no overflow

end:
  # End of program
  li a7, 1
  add a0, t1, zero
  ecall

.data
arr:      .space 400

.text
main:
    addi t1, x0, 1 # initialize loop counter to 0
    la s0, arr
loop:
    bgt t1, a0, exit # check if loop counter equals value in a0 register
    sw t1, 0(s0)   # store loop counter value in array
    addi t1, t1, 1   # increment loop counter
    addi s0, s0, 4
    j loop           # jump back to the beginning of the loop

exit:
    li t2, -1        # load -1 into register x1
    sw t2, 0(s0)   # store -1 at the end of the array
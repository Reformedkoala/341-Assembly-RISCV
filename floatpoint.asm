
.text
li a7, 6
ecall
fmv.s fs1, fa0, 
li a7, 6
ecall
fmv.s fs2, fa0

fadd.s fs3, fs1, fs2

li a7, 2
fmv.s fa0, fs3
ecall
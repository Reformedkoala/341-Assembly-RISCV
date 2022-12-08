li a7, 6
ecall
fmv.s fs1, fa0#cpu
li a7, 6
ecall
fmv.s fs2, fa0#cpi
li a7, 6
ecall
fmv.s fs3, fa0#clock cycle

fmul.s fs4, fs2, fs3
fdiv.s fs0, fs1, fs4

fmv.s fa0, fs0
li a7, 2
ecall
ret

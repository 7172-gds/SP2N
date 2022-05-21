.data
print_format:
.string "%d\n"
array:
.long 4,-2,-6,9,12,-7,2,-9,1,5
array_end:
.text
.global main
.type main, @function
main:
movl $0, %ecx
movl $array, %ebx
movl (%ebx), %eax

jmp ch_bound
loop_start:
cmpl $0, (%ebx)
jg lees
notl (%ebx)
addl $1, (%ebx)
lees:
add  (%ebx), %ecx
addl $4, %ebx
movl (%ebx), %eax
ch_bound:
cmpl $array_end, %ebx
jne loop_start

pushl %ecx
pushl $print_format
call printf
addl $8, %esp
movl $0, %ecx
movl $0, %ebx
movl $0, %eax
ret

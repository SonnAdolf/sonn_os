# start my own os - steini
# by sonne
# Oct 11 2016
	.code16
	.section .text
	.globl _start
_start:
	movw %cs, %ax
	movw %ax, %ds
	movw %ax, %es
	call print_str
print_str:
	movw $str, %ax
	movw %ax, %bp
	movw $0x10, %cx
	movw $0x1301, %ax
	movw $0x000c, %bx
	movb $0, %dl
	int $0x10
loop:
	jmp loop
str:	.ascii "my stein--my os."
	.org 510
	.word 0xAA55

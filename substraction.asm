.data
str2:	.asciiz "Input a number\n"
str3:	.asciiz "Input another number:\n"
str4:	.asciiz "Substraction:\n"
	.text
	
main:
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, str3
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	sub $t3, $t1, $t2
	
	li $v0, 1
	la $a0, ($t3)
	syscall

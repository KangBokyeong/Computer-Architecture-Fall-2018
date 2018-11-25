.data
str1:	.asciiz "Your age : "
str2:	.asciiz "My age is "

.text
.globl main

main:
	li $v0, 4
	la $a0, str1
	syscall
	
	#Invokes 5 in $ v0(li : load immediate)
	li $v0, 5
	#Execute the register value set in $v0 (5 : read integer)
	syscall
	#store data($v0) to $s0
	move $s0, $v0
	
	li $v0, 4
	la $a0, str2
	syscall
	
	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store data($s0) to $a0
 	move $a0, $s0
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
	
	li $v0, 10
	syscall

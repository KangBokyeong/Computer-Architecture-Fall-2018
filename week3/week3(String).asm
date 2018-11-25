.data
str1:	.asciiz	"Your name : "
str2:	.asciiz	"My name is "
myname:	.space	20

.text
.globl main

main:
	li $v0, 4
	la $a0, str1
	syscall
	
	#input name, with size 20
	li $v0, 8
	#bring address of myname to $a0(la : load address)
	la $a0, myname
	#give space on $ a1(li : load immediate)
	li $a1, 20
	#Execute the register value set in $v0 (4 : read string)
	syscall
	
	li $v0, 4
	la $a0, str2
	syscall
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of myname to $a0(la : load address)
 	la $a0, myname
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 		
	li $v0, 10
	syscall

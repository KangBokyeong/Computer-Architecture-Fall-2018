#File_name: week3(Input name and student number).asm
#Content: Input name and student number
#Date(written date): 2018.09.19.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz	"Your name : "
str2:	.asciiz	"My name is "
str3:	.asciiz "Your student number : "
str4:	.asciiz "My student number is "
myname:	.space	20

#section of text
.text

#declare main
.globl main

#main
main:
#################################################################
#print str1("Your name : ") and give space

	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str1 to $a0(la : load address)
 	la $a0, str1
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
	
	#input name, with size 20
	li $v0, 8
	#bring address of myname to $a0(la : load address)
	la $a0, myname
	#give space on $ a1(li : load immediate)
	li $a1, 20
	#Execute the register value set in $v0 (4 : read string)
	syscall
	
#################################################################
#print str3("Your student number : ") and input student number
#move data to $s0
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str3 to $a0(la : load address)
 	la $a0, str3
 	#Execute the register value set in $v0 (4 : print string)
 	syscall

	#input student number
	
	#Invokes 5 in $ v0(li : load immediate)
	li $v0, 5
	#Execute the register value set in $v0 (5 : read integer)
	syscall
	
	#move $v0 to $s0
	move $s0, $v0
	
#################################################################
#print str2("My name is ") and print value(myname)

	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str2 to $a0(la : load address)
 	la $a0, str2
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of myname to $a0(la : load address)
 	la $a0, myname
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
#################################################################
#print str4("My student number is ") and print value(student number,$s0)
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str4 to $a0(la : load address)
 	la $a0, str4
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $s0 to $a0
 	move $a0, $s0
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
	
#################################################################		
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

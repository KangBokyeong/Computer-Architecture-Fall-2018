#File_name: week7(input review).asm
#Content: review input
#Date(written date): 2018.10.17.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
input_num:	.asciiz	"input num : "
input_str:	.asciiz	"input str : "
newline:	.asciiz "\n"
myspace:	.space 20

#section of text
.text

#declare main
.globl main

# main
main:
#################################################################
#print input_num("input num : ")	
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of input_num to $a0(la : load address)
 	la $a0, input_num
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 
#################################################################	
#input num and move data to $s0

	#Invokes 5 in $ v0(li : load immediate)
	li $v0, 5
	
	#Execute the register value set in $v0 (5 : read integer)
	syscall
	
	#move $v0 to $s0
	move $s0, $v0
	
#################################################################
#print input_str("input str : ")	
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of input_str to $a0(la : load address)
 	la $a0, input_str
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 
#################################################################	
#input str 

	#Invokes 8 in $ v0(li : load immediate)
	li $v0, 8	
	#Give space t0 $a0
	la $a0, myspace	
	#load immediate, give space to $a1 20
	li $a1, 20	
	#Execute the register value set in $v0 (8 : read string)
	syscall	
	
#################################################################			
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $s0 to $a0
 	move $a0, $s0
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
 	
#################################################################	
#make newline("\n")	
 
    	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, newline
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
#################################################################		
#Give space using myspace
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of myspace to $a0(la : load address)
 	la $a0, myspace
 	#Execute the register value set in $v0 (4 : print string)
 	syscall	
 		
#################################################################		
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

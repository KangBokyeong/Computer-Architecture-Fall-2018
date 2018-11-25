#File_name: week10(sll, srl, sra(minus)).asm
#Content: sll, srl, sra(minus)
#Date(written date): 2018.11.07.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
newline:	.asciiz "\n"

#section of text
.text

#declare main
.globl main

# main
main:
	#Store value(-20) in $s0(li : load immediate)
	li $s0, -20
	
	#sll(shift left logical), $s0 shift left 2 and then fill 0 to $s1
	sll $s1, $s0, 2
	#srl(shift right logical), $s0 shift right 2 and then fill 0 to $s2
	srl $s2, $s0, 2
	#sra(shift right arithmetic), $s0 shift right 2 and then fill msb value to $s3
	sra $s3, $s0, 2
	
#################################################################			
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $s1 to $a0
 	move $a0, $s1
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
 	
#################################################################
#print newline("\n")	
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, newline
 	#Execute the register value set in $v0 (4 : print string)
 	syscall

#################################################################			
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $s2 to $a0
 	move $a0, $s2
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
 	
#################################################################
#print newline("\n")	
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, newline
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
#################################################################			
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $s3 to $a0
 	move $a0, $s3
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
 	
#################################################################		
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

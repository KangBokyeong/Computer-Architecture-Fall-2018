#File_name: week9(hw2).asm
#Content: $s0 = 112, $s0 * 64 & $s0 / 8
#Date(written date): 2018.10.31.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz "sll : "
str2:	.asciiz "\nsra : "

#section of text
.text

#declare main
.globl main

# main
main:
	#Store value(-152) in $s0(li : load immediate)
	li $s0, -152
	
	#sll(shift left logical), $s0 shift left 2 and then fill 0 to $s1
	sll $s1, $s0, 6
	#srl(shift right logical), $s0 shift right 4 and then fill 0 to $s2
	sra $s2, $s0, 3
	
#################################################################
#print str1("sll : ")	
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str1 to $a0(la : load address)
 	la $a0, str1
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
#################################################################			
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $s1 to $a0
 	move $a0, $s1
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
 	
#################################################################
#print str2("\nsrl : ")	
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str2 to $a0(la : load address)
 	la $a0, str2
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
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

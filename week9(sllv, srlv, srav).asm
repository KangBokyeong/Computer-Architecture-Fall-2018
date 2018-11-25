#File_name: week9(sllv, srlv, srav).asm
#Content: sllv, srlv, srav
#Date(written date): 2018.10.31.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz "sllv : "
str2:	.asciiz "\nsrlv : "
str3:	.asciiz "\nsrav : "

#section of text
.text

#declare main
.globl main

# main
main:
	#Store value(56) in $s0(li : load immediate)
	li $s0, 56
	#Store value(3) in $t0(li : load immediate)
	li $t0, 3
	
	#sllv(shift left logical variable), $s0 shift left $t0(3) and then fill 0 to $s1
	sllv $s1, $s0, $t0
	#srlv(shift right logical variable), $s0 shift right $t0(3) and then fill 0 to $s2
	srlv $s2, $s0, $t0
	#srav(shift right arithmetic variable), $s0 shift right $t0(3) and then fill msb value to $s3
	srav $s3, $s0, $t0
	
#################################################################
#print str1("sllv : ")	
	
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
#print str2("\nsrlv : ")	
	
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
#print str3("\nsrav : ")	
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str3 to $a0(la : load address)
 	la $a0, str3
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

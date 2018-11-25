#File_name: week2(sum and sub).asm
#Content: sum and sub
#Date(written date): 2018.09.12.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str: .asciiz "20175103 / Kang Bokyeong"
newline: .asciiz "\n"

#section of text
 .text
 
#declare main
 .globl main
 
#main
 main:
###############################################################
#print str("20175103 / Kang Bokyeong")
 
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str to $a0(la : load address)
 	la $a0, str
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
###############################################################	
#make new line("\n")	
 
    	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, newline
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
###############################################################		
#load immediate and store the value to each storage

	li $s1, 40
 	li $s2, 5
 	li $s3, 15

###############################################################		
#calculating
	
 	#$t1 = $s1 + $s2, add $s1 and $s2, store to $t1 for calculating only
 	add $t1, $s1, $s2
 	#$s4 = $t1 - $s3, sub $s3 from $t1, store to $s4
 	sub $s4, $t1, $s3
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $s4 to $a0
 	move $a0, $s4
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 
###############################################################		
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

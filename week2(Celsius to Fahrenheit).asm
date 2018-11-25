#File_name: week2(Celsius to Fahrenheit).asm
#Content: Celsius to Fahrenheit
#Date(written date): 2018.09.12.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str: .asciiz "20175103 / Kang Bokyeong"
newline: .asciiz "\n"
celsius: .asciiz "Celsius : "
fahrenheit: .asciiz "Fahrenheit : "

#section of text
 .text
 
#declare main
 .globl main
 
# main
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
#set the values to each storage(last one is 'celsius value'

 	li $s1, 9
 	li $s2, 5
 	li $s3, 5 #celsius value
 	
###############################################################
#print the value of celius

	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of celsius to $a0(la : load address)
 	la $a0, celsius
 	#Execute the register value set in $v0 (4 : print string)
 	syscall

	#bring 1 to $v0
  	li $v0, 1
  	#move $s3 to $a0
 	move $a0, $s3
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
#calculating
	
	#multiply first with $s1 and $s3 ( 9 * 5 ), $s3 is Celsius value
	mult $s1, $s3
	
	#bring 1 to $v0
 	li $v0, 1
 	#Move from lo, bring each value of register to $a0 
 	mflo $a0
 	
 	#then divide $a0 and $s2, store to &tl for just caluculating only ( $t1 = 45 / 5 ) 
 	div $t1, $a0, $s2
 	
 	#add $t1 with constant value(32) and store to $s0 ( 9 + 32 )
	addi $s0, $t1, 32
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of fahrenheit to $a0(la : load address)
 	la $a0, fahrenheit
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $s0 to $a0
 	move $a0, $s0
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
###############################################################		
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

#File_name: week3(Fahrenheit to Celsius).asm
#Content: Fahrenheit to Celsius
#Date(written date): 2018.09.19.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz	"input temperature : "
str2:	.asciiz	"F : "
str3:	.asciiz "C : "
newline: .asciiz "\n"

#section of text
.text

#declare main
.globl main

# main
main:
#################################################################
#print str1("input temperature : ")	
	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str to $a0(la : load address)
 	la $a0, str1
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 
#################################################################	
#input temperature and move data to $s0

	#Invokes 5 in $ v0(li : load immediate)
	li $v0, 5
	
	#Execute the register value set in $v0 (5 : read integer)
	syscall
	
	#move $v0 to $s0
	move $s0, $v0
	
#################################################################		
#calculating
	#first calculating (41 - 32 = 9) and store to $s3 
	addi $s3, $s0, -32
	
	#set the values to each storage
 	li $s1, 5
 	li $s2, 9
 	
 	#multiply with $s1 and $s3 ( 5 * 9 ), $s3 is Celsius value
	mult $s1, $s3
	
	#bring 1 to $v0
 	li $v0, 1
 	
 	#Move from lo, bring each value of register to $a0 
 	mflo $a0
 	
 	#then divide $a0 and $s2, store to &tl for just caluculating only ( $t1 = 45 / 5 ) 
 	div $t1, $a0, $s2
 
#################################################################			
 #print str2("F : ") and input value
 
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of str2 to $a0(la : load address)
 	la $a0, str2
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $s0 to $a0
 	move $a0, $s0
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
 	
#################################################################	
#make new line("\n")	
 
    	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, newline
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
#################################################################		
#print str3("C : ") and calculated value($t1)
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of str3 to $a0(la : load address)
 	la $a0, str3
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $t1 to $a0
 	move $a0, $t1
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
 	
#################################################################		
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

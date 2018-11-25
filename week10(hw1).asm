#File_name: week10(hw1).asm
#Content: even number, odd number
#Date(written date): 2018.11.07.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz "Even number."
str2:	.asciiz "Odd number."

#section of text
.text

#declare main
.globl main

# main
main:
	#Store value(2) in $t0(li : load immediate)
	li $t0, 2		#$t0 = 2
	#input number
	#Invokes 5 in $ v0(li : load immediate)
	li $v0, 5
	#Execute the register value set in $v0 (5 : read integer)
	syscall	
	#move $v0 to $s0
	move $s0, $v0	#$s0 = num	
	div $s0, $t0	#num % 2
	# store remain to $s1
	mfhi $s1	#$s1 = num % 2
	# if num % 2 is equal 0, jump to else
	beq $s1, $0, else
	#print str2("Odd number.")	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str2 to $a0(la : load address)
 	la $a0, str2
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
	j done		#jump to done

else:	
	#print str1("Even number.")	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str1 to $a0(la : load address)
 	la $a0, str1
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
done:
	#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

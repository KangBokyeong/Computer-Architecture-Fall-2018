#File_name: week12(hw1).asm
#Content: Leap year or ordinary years
#Date(written date): 2018.11.28.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz "Enter year : "
str2:	.asciiz " is an ordinary year\n"
str3:	.asciiz " is a leap year\n"

#section of text
.text

#declare main
.globl main

# main
main:
	#Store value(0) in $t0(li : load immediate)
	li $t0, 4
	#Store value(100) in $t1(li : load immediate)
	li $t1, 100
	#Store value(400) in $t2(li : load immediate)
	li $t2, 400

#print str1("Enter year : ")  and input year
while:
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str1 to $a0(la : load address)
 	la $a0, str1
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
	
	#input student number
	#Invokes 5 in $ v0(li : load immediate)
	li $v0, 5
	#Execute the register value set in $v0 (5 : read integer)
	syscall
	
	#move $v0 to $s0
	move $s0, $v0	

if_1:	
	# year divide 4
	div $t3, $s0, $t0
	# mod -> $t4
	mfhi $t4
	bne $t4, $0, print_ord
	
	j if_2
	
if_2: 
	# year divide 100
	div $t3, $s0, $t1
	# mod -> $t4
	mfhi $t4
	bne $t4, $0, print_leap
	
	j if_3
	
if_3: 
	# year divide 400
	div $t3, $s0, $t2
	# mod -> $t4
	mfhi $t4
	bne $t4, $0, print_ord
	
	j print_leap

print_ord:
	#print result	
	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1		
 	#bring address of $s0 to $a0(la : load address)
 	move $a0, $s0
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
 	
	#print str2(" is an ordinary year\n")	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str2 to $a0(la : load address)
 	la $a0, str2
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
	
	j while
	
print_leap:

	#print result	
	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1		
 	#bring address of $s0 to $a0(la : load address)
 	move $a0, $s0
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
 	
	#print str3(" is a leap year\n")	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str3 to $a0(la : load address)
 	la $a0, str3
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	j while

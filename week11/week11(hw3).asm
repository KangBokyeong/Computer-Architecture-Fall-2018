#File_name: week11(hw3).asm
#Content: input number print result for while
#Date(written date): 2018.11.07.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz "input num (-999 for exit) : "
str2:	.asciiz "result : "
#section of text
.text

#declare main
.globl main

# main
main:
	#Store value(0) in $s1(li : load immediate)
	li $s1, 0		#$s0 = result
	#Store value(-999) in $t0(li : load immediate)
	li $t0, -999
	
while:
	#print str1("input num (-999 for exit) : ")
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str1 to $a0(la : load address)
 	la $a0, str1
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	#Invokes 5 in $ v0(li : load immediate)
 	li $v0, 5		
 	#Execute the register value set in $v0 (5 : read integer)
 	syscall
 	#move $v0 to $s2
 	move $s0, $v0	#$s0 = num
	# if num equal -999, jump to done
	beq $s0, $t0, done
	# result += num
	add $s1, $s1, $s0
	j while		#jump to while

done:	
	#print newline("result : ")	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, str2
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
	#print result	
	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1		
 	#bring address of $s1 to $a0(la : load address)
 	move $a0, $s1
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
 #exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

#File_name: week11(hw2).asm
#Content: input number print result(for)
#Date(written date): 2018.11.14.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz "input : "
str2:	.asciiz "result : "

#section of text
.text

#declare main	
.globl main

# main
main:
	#Store value(0) in $s1(li : load immediate)
	li $s1, 0	#$s1 = result = 0		
	#Store value(0) in $s2(li : load immediate)
	li $s2, 0	# $s2 = i = 0
	#Store value(0) in $t0(li : load immediate)
	li $t0, 2	# $t0 = 2
	#print str1("input : ")
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
for:
	# if $s2 is less than $s0, set $t1 to 1, esle 0 i < num
	slt $t1, $s2, $s0
	# if $t1 is 0, goto done
	beq $t1, $0, done 
	move $t2, $s2 	# move $s2(i) to $t2 
	div $t2, $t0 	# i % 2
	mfhi $s3	#$s3 = i % 2
	# i = i + 1
	addi $s2, $s2, 1
	# if i % 2 is not equal 0, jump to for
	bne $s3, $0, for
	# result += i
	add $s1, $s1, $t2
	# jump to for
	j for
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

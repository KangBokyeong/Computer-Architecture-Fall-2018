#File_name: week11(hw1).asm
#Content: accumulation(multiple 1 to 9)
#Date(written date): 2018.11.14.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz "result : "

#section of text
.text

#declare main
.globl main

# main
main:
	#Store value(1) in $s0(li : load immediate)
	li $s0, 1		#$s0 = 1	result = 1
	#Store value(10) in $t0(li : load immediate)
	li $t0, 10		#$t0 = 10
	#Store value(1) in $s0(li : load immediate)
	li $s1, 1		#$s1 = 1	i = 1
for:
	# if $s1 is less than $t0, set $t1 to 1, esle 0
	slt $t1, $s1, $t0
	# if $t1 is 0, goto done
	beq $t1, $0, done 
	# result = result * i
	mul $s0, $s0, $s1
	# i = i + 1
	addi $s1, $s1, 1
	# jump to for
	j for
done:
	#print str1("result : ")	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str2 to $a0(la : load address)
 	la $a0, str1
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
	#print result	
	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1		
 	#bring address of $s0 to $a0(la : load address)
 	move $a0, $s0
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
	#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

#File_name: week12(hw2).asm
#Content: print star
#Date(written date): 2018.11.28.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz "*"
str2:	.asciiz " "
str3:	.asciiz "\n"


#section of text
.text

#declare main
.globl main

# main
main:
	#Store value(0) in $s0(li : load immediate) 
	li $s0, 0	# i = 0
	#Store value(100) in $s2(li : load immediate)
	li $s2, 5	# length = 5
	
	
	
for1:	
	# (i < length)-> $t0 
	slt $t0, $s0, $s2
	beq $t0, $0, done
	#Store value(0) in $s1(li : load immediate)
	li $s1, 0	# j = 0
	
	j for2
for2:	
	
	# i + length -> $t4
	add $t4, $s0, $s2
	# (j < i + length )-> $t1
	slt $t1, $s1, $t4 
	beq $t1, $0, print_newline
	
	j if
if:
	# length - i - 1
	# (length - i) -> $t2
	sub $t2, $s2, $s0
	# ($t2 - 1) -> $t2
	addi $t2, $t2, -1
	# (j < length - i - 1 )-> $t3
	slt $t3 ,$s1, $t2
	beq $t3, $0, print_ast
	
	j print_space

print_ast:
	
	#print str1("*")	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str2 to $a0(la : load address)
 	la $a0, str1
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
	# j++
	addi $s1, $s1, 1
	
	j for2
	
print_space:

	#print str3(" ")	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str2 to $a0(la : load address)
 	la $a0, str2
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	# j++
	addi $s1, $s1, 1
	
 	j for2
 	
print_newline:
	#print str3("\n")	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str2 to $a0(la : load address)
 	la $a0, str3
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	# i++
	addi $s0, $s0, 1
	
 	j for1
 	
 done:
 #exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

#File_name: week10(hw2).asm
#Content: print "*" using for
#Date(written date): 2018.11.07.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz "*"
newline:	.asciiz "\n"
#section of text
.text

#declare main	
.globl main

# main
main:
	#Store value(1) in $s0(li : load immediate)
	li $s0, 1		#$s0 = i
	#Store value(5) in $t0(li : load immediate)
	li $t0, 5		#$t0 = 5		
for2:	
	# if j equal i, jump to done
	beq $s1, $s0, for1
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str1 to $a0(la : load address)
 	la $a0, str1
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	# j = j + 1
	addi $s1, $s1, 1
 	j for2		#jump to for2
for1:
	#Store value(0) in $s1(li : load immediate)
	li $s1, 0		#$s1 = j
	# i = i + 1
	addi $s0, $s0, 1
	# if i equal 5, jump to done
	beq $s0, $t0, done
	#print newline("\n")	
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, newline
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
	j for2		#jump to for2
 	
done:	
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

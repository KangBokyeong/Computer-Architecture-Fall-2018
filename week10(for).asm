#File_name: week10(for).asm
#Content: for
#Date(written date): 2018.11.07.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data

#section of text
.text

#declare main
.globl main

# main
main:
	#Store value(0) in $s0(li : load immediate)
	li $s0, 0		#$s0 = i
	#Store value(0) in $s1(li : load immediate)
	li $s1, 0		#$s1 = sum
	#Store value(10) in $t0(li : load immediate)
	li $t0, 10
	
for:
	# if i is not equal 10, jump to done
	beq $s0, $t0, done
	# sum = sum + i
	add $s1, $s0, $s1
	# $s0 = $s0 + 1
	addi $s0, $s0, 1
	j for		#jump to while

done:	
 	#Invokes 1 in $ v0(li : load immediate)
 	li $v0, 1
 	#store $s1 to $a0
 	move $a0, $s1
 	#Execute the register value set in $v0 (1 : print integer)
 	syscall
	
	#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

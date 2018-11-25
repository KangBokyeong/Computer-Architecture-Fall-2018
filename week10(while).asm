#File_name: week10(while).asm
#Content: while
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
	#Store value(1) in $s0(li : load immediate)
	li $s0, 1		#$s0 = pow
	#Store value(0) in $s1(li : load immediate)
	li $s1, 0		#$s1 = x
	#Store value(128) in $t0(li : load immediate)
	li $t0, 128
	
while:
	# if pow equal 128, jump to done
	beq $s0, $t0, done
	#sll(shift left logical), $s0 shift left 1 and then fill 0 to $s1
	sll $s0, $s0, 1
	# $s1 = $s1 + 1
	addi $s1, $s1, 1
	j while		#jump to while

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

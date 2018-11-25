#File_name: week7(two hexadecimal AND, OR, XOR, NOR).asm
#Content: two hexadecimal AND, OR, XOR, NOR
#Date(written date): 2018.10.17.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data

#section of text
.text

#declare main
.globl main

# main
main:
	#Store hexadecimal value(0xA7D295F6) in $s0(li : load immediate)
	li $t1, 0xA7D295F6
	#Store hexadecimal value(0xE74FB45F) in $s1(li : load immediate)
	li $t2, 0xE74FB45F
	
	
	and $s0, $t1, $t2
	or $s1, $t1, $t2
	xor $s2, $s0, $s1
	nor $s3, $s0, $s1
	
#################################################################		
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

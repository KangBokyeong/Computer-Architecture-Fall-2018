#File_name: week7(AND, OR, XOR, NOR).asm
#Content: AND, OR, XOR, NOR
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
	#Store hexadecimal value(0xFFFF0000) in $s0(li : load immediate)
	li $s0, 0xFFFF0000
	#Store hexadecimal value(0x46A1F0B7) in $s1(li : load immediate)
	li $s1, 0x46A1F0B7
	
	
	and $s2, $s0, $s1
	or $s3, $s0, $s1
	xor $s4, $s0, $s1
	nor $s5, $s0, $s1
	
#################################################################		
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

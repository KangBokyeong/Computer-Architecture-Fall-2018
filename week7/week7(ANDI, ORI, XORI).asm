#File_name: week7(ANDI, ORI, XORI).asm
#Content: ANDI, ORI, XORI
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
	#Store hexadecimal value(0xFF) in $s0(li : load immediate)
	li $s0, 0xFF
	
	andi $s1, $s0, 0x4A7C
	ori $s2, $s0, 0x4A7C
	xori $s3, $s0, 0x4A7C
	
#################################################################		
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

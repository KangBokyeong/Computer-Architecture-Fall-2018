#File_name: week10(if, else(bne)).asm
#Content: if, else(bne)
#Date(written date): 2018.11.07.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str1:	.asciiz "Value of x is 0."
str2:	.asciiz "Value of x is not 0."

#section of text
.text

#declare main
.globl main

# main
main:
	#Store value(0) in $s0(li : load immediate)
	li $s0, 0		#x
	#Invokes 4 in $ v0(li : load immediate)
	li $v0, 4
	
	# if x not equal 0, jump to else
	bne $s0, $0, else
	# print str1("Value of x is 0.")
	la $a0, str1
	#Execute the register value set in $v0 (4 : print string)
	syscall
	#jump to done
	j done	
else:
	# print str2("Value of x is not 0.")
	la $a0, str2
	#Execute the register value set in $v0 (4 : print string)
	syscall
	
done:
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

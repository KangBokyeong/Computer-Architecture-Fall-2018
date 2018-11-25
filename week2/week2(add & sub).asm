#File_name: week2(add & sub).asm
#Content: add & sub
#Date(written date): 2018.09.12.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

.data
str:	.asciiz "20175103 / Kang Bokyeong"
newline: .asciiz "\n"

 .text
 .globl main
 
 main:
 	li $v0, 4
 	la $a0, str
 	syscall
 	
 	li $v0, 4
 	la $a0, newline
 	syscall
 	
 	li $s1, 10
 	la $s2, 20
 	add $s0, $s1, $s2
 	sub $s3, $s1, $s2
 	
 	li $v0, 1
 	move $a0, $s0
 	syscall
 	
 	li $v0, 4
 	la $a0, newline
 	syscall
 	
 	li $v0, 1
 	move $a0, $s3
 	syscall

 	li $v0, 10
 	syscall
  

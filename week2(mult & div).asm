#File_name: week2(mult & div).asm
#Content: mult & div
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
 	
 	li $s0, 5
 	li $s1, 3
 	mult $s0, $s1
 	
 	li $v0, 1
 	mflo $a0
 	syscall
 	
 	li $v0, 4
 	la $a0, newline
 	syscall
 	
 	div $s0, $s1
 	
 	li $v0, 1
 	mflo $a0
 	syscall

 	li $v0, 4
 	la $a0, newline
 	syscall
 	
 	li $v0, 1
 	mfhi $a0
 	syscall
 	
 	li $v0, 10
 	syscall
  

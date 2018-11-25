#File_name: week2(addi).asm
#Content: addi
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
 	
 	li $s0, 20
 	addi $s1, $s0, 10
 	addi $s2, $s0, -10
 	
 	li $v0, 1
 	move $a0, $s1
 	syscall
 	
 	li $v0, 4
 	la $a0, newline
 	syscall
 	
 	li $v0, 1
 	move $a0, $s2
 	syscall

 	li $v0, 10
 	syscall
  

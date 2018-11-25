#File_name: week2(print student number and name).asm
#Content: print student number and name
#Date(written date): 2018.09.12.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

.data
stdnum:	.asciiz "20175103"
newline: .asciiz "\n"
stdname: .asciiz "Kang Bokyeong"

 .text
 .globl main
 
 main:
 	li $v0, 4
 	la $a0, stdnum
 	syscall
 	
 	li $v0, 4
 	la $a0, newline
 	syscall
 	
 	li $v0, 4
 	la $a0, stdname
 	syscall
 	
 	li $v0, 10
 	syscall
  

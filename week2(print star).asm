#File_name: week2(print star).asm
#Content: print star
#Date(written date): 2018.09.12.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#section of data
.data
str: .asciiz "20175103 / Kang Bokyeong"
newline: .asciiz "\n"
star: .asciiz "*"

#section of text
 .text
 
#declare main
 .globl main
 
# main
 main:
 ###############################################################
 #print str("20175103 / Kang Bokyeong")
 
	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of str to $a0(la : load address)
 	la $a0, str
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 ###############################################################	
 #make new line("\n")	
 
    	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, newline
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 ###############################################################		
 #print star("*") once
 
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of star to $a0(la : load address)
 	la $a0, star
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 ###############################################################
 #make new line("\n")
 
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, newline
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
###############################################################		
 #print star("*") twice 
 
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of star to $a0(la : load address)
 	la $a0, star
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4
 	la $a0, star
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
###############################################################		
 #make new line("\n")
 
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, newline
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
###############################################################		 	
 #print star("*") three times
 
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of star to $a0(la : load address)
 	la $a0, star
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of star to $a0(la : load address)
 	la $a0, star
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of star to $a0(la : load address)
 	la $a0, star
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
###############################################################	
 	#make new line("\n")
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4		
 	#bring address of newline to $a0(la : load address)
 	la $a0, newline
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
###############################################################		
 	#print star("*") four times
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of star to $a0(la : load address)
 	la $a0, star
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of star to $a0(la : load address)
 	la $a0, star
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of star to $a0(la : load address)
 	la $a0, star
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
 	#Invokes 4 in $ v0(li : load immediate)
 	li $v0, 4
 	#bring address of star to $a0(la : load address)
 	la $a0, star
 	#Execute the register value set in $v0 (4 : print string)
 	syscall
 	
###############################################################		
#exit
 	#bring 10 to $v0
 	li $v0, 10
 	#Execute the register value set in $v0. (10 : exit)
 	syscall

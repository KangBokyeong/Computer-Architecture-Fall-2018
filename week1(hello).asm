#File_name: week1(hello).asm
#Content: "Hello Computer Architecture" print(+Commenting)
#Date(written date): 2018.09.05.(Wed)
#Person who wrote: 20175103 Comp.Sci. Kang Bokyeong

#Data_Section
.data

str:	.asciiz "Hello Computer Architecture"

#Text_Section
.text	

#declare main
.globl main

#main
main:

    #Invokes 4 in $ v0
    #li : load immediate
	li	$v0,	4
	
    #bring address of str to $a0
    #la : load address
	la	$a0,	str

    #Execute the register value set in $v0 (4 : print string)
	syscall
	
    #bring 10 to $v0
	li	$v0,	10

    #Execute the register value set in $v0. (10 : exit)
	syscall
	

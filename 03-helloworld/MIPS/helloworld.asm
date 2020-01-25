# Hello world program , it define a variable and with a string and print it to video.
# fileName: helloworld.asm

.data
	greeting: .asciiz " hello world!"
.text

main:   
     li   $v0, 4
     la   $a0, greeting 
     syscall 
 
     li $v0,10   
     syscall       
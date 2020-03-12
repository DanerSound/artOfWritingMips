# Some quick print use cases of syscall that
# are use to print diffirents values 
# or execute some actions 
.data
	myString: 	.asciiz "This is a simple string "
	myChar:	  	.byte    'b'
	myInteger:	.word   28
	newLine:	.asciiz "\n"

.text 
main:
	
	
	li $v0, 4 
	la $a0, myString   #load the new string
	syscall
	
	li $v0, 4 
	la $a0, newLine      # print newLine 
	syscall
	
	li $v0, 4	   # code to print a byte
	la $a0, myChar     # load the address to print from
	syscall
	
	li $v0, 4 
	la $a0, newLine      # print newLine 
	syscall
	
	li $v0, 1	    # different code to different type 	
	lw $a0, myInteger   #load the integer address
	syscall
	
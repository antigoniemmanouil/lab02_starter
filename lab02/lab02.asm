# Find longest word in a string
#   in MIPS assembly using MARS
#Β for MYΞ¥-402 - Computer Architecture
# Department of Computer Engineering, University of Ioannina
# Aris Efthymiou

        .globl main # declare the label main as global. 
        
        .text 
     
main:
        la         $a0, string         # The address of the string
        addu       $v1, $zero, $a0     # The address of longest word

        addu 		$w1, $zero, $zero
	addiu      $w0, $zero, 32
	addu 	$s1, $zero, $zero
	
compare:
	slt 		$w2, $w1, $s1  
	beq 		$w2, $zero, max
	addiu 	$a0, $a0, 1
	addu	 	$w1, $zero, $zero
	j loop	
	
max: 	              
	subu	 	$v1, $a0, $w1  
	addu		$s1, $zero, $w1 
	addu	 	$w1, $zero, $zero 
	addiu 	$a0, $a0, 1
	j loop
        
exit: 
        addiu      $v0, $zero, 10    # system service 10 is exit
        syscall                      # we are outta here.
        
       
        .data
string: .asciiz "small  equal long atTheEnd"

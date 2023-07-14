.data
	msg1: .asciiz "\nDigite um numero:\n"
	msg2: .asciiz "\nDigite outro numero\n"
	msg3: .asciiz "\na media eh: \n"
	
	zero: .float 0.0
	two: .float 2.0
.text
	l.s $f13, zero
	l.s $f20, two
	
	#printando msg1
	li $v0, 4
	la $a0, msg1
	syscall
	
	#lendo num1
	li $v0, 6
	syscall
	add.s $f14, $f0, $f13
	
	#printando msg2
	li $v0, 4
	la $a0, msg2
	syscall
	
	#lendo num2
	li $v0, 6
	syscall
	add.s $f15, $f0, $f13
	
	#somando os 2
	add.s $f16, $f14, $f15
	
	#dividindo por 2
	div.s $f30, $f16, $f20
	
	#printando msg3 e resultado
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 2
	add.s $f12, $f30, $f13
	syscall
	
	
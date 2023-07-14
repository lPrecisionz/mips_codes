.data
	msg1: .asciiz "Digite seu salario\n"
	msg2: .asciiz "\nSeu salario final eh:\n"
	const: .float 0.1
	zero: .float 0.0

.text
	
	.macro printar_msg(%str)
	li $v0, 4
	la $a0, %str
	syscall
	.end_macro
	
	l.s $f30, const
	l.s $f31, zero
	
	#printando msg1
	printar_msg(msg1)
	
	#lendo salario
	li $v0, 6
	syscall
	add.s $f20, $f0, $f31
	
	#calculando aumento
	mul.s $f15, $f20, $f30
	add.s $f15, $f15, $f20
	
	#print msg2
	printar_msg(msg2)
	
	li $v0, 2
	add.s $f12, $f15, $f31
	syscall
	
	
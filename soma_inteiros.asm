.data
	
	msg1: .asciiz "\nDigite um numero inteiro\n"
	msg2: .asciiz "\nA soma e:"

	
.text
	.macro printarmsg1
	li $v0, 4
	la $a0, msg1
	syscall
	.end_macro
	
	# printar a msg1
	printarmsg1
	
	#ler um umero inteiro, o resultado fica em $v0
	li $v0, 5
	syscall
	
	#colocar o v0 em algum registrador
	add $t1, $v0, $zero
	
	li $t2, 10
	
	#soma o inteiro digitado com o valor em $t2
	add $t3, $t1, $t2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall
	
	
.data
	msg1: .asciiz "digite um numero: "
	msg2: .asciiz "\no produto dos 3 numeros eh: "
	
.text
	#$t1 = valor 1
	#$t2 = valor 2
	#$t3 = valor 3
	#$t4 = produto
	
	.macro printar_msg
	li $v0, 4
	la $a0, msg1
	syscall
	.end_macro
	
	printar_msg
	li $v0, 5
	syscall
	add $t1, $t1, $v0
	
	printar_msg
	li $v0, 5
	syscall
	add $t2, $t2, $v0
	
	printar_msg
	li $v0, 5
	syscall
	add $t3, $t3, $v0
	
	#produto
	mul $t4, $t1, $t2
	mul $t4, $t4, $t3
	
	li $v0, 1
	add $a0, $t4, $zero
	syscall
	
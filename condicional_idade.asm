.data
	msg1: .asciiz "digite seu ano de nascimento: "
	msg2: .asciiz "\nvoce e menor de idade"
	msg3: .asciiz "\n voce e maior de idade"

.text
	#t0 = 2022
	#t1 = anoNascimento
	#t2 = idade
	#t3 = 18 anos
	
	.macro printar_msg(%str)
	li $v0, 4
	la $a0, %str
	syscall
	.end_macro
	
	printar_msg(msg1)
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero
	
	li $t0, 2022
	li $t3, 18
	
	sub $t2, $t0, $t1
	
	bge $t2, $t3, if
	j else
	
	if:
	printar_msg(msg3)
	j end
	
	else:
	printar_msg(msg2)
	end:
	
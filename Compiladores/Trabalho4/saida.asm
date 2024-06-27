.text
imprime:
	li $v0, 1
	move $a0,$s1
	syscall
	li $v0,11
	li $a0,'\n'
	syscall
	jr $ra
main:
	li $t1,10
	move $s1,$t1
	la $ra, imprime
	jal imprime
	li $t1,10
	move $s1,$t1
	la $ra, imprime
	jal imprime
	li $v0, 10
	syscall

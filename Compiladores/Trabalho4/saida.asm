.text
	li $t1,1
	move $s1,$t1
	li $v0, 1
	move $a0,$s1
	syscall
	li $v0,11
	li $a0,'\n'
	syscall
	move $s2,$s1
	li $v0, 1
	move $a0,$s2
	syscall
	li $v0,11
	li $a0,'\n'
	syscall

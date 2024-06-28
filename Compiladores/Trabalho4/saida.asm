.text
	li $v0, 5
	syscall
	move $s1,$v0
	li $v0, 5
	syscall
	move $s2,$v0
	
	add $t0,$s1,$s2

	li $t1,10
	add $t2,$t0,$t1
	move $s3,$t2
	
	li $v0, 1
	move $a0,$s3
	syscall
	li $v0,11
	li $a0,'\n'
	syscall

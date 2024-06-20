.text
	li $v0, 5
	syscall
	move $s1,$v0
	li $v0, 5
	syscall
	move $s3,$v0
	li $t1,0
	move $s2,$t1
L2:
	li $v0, 1
	move $a0,$s2
	syscall
	li $v0,11
	li $a0,'\n'
	syscall
	li $t3,1
	add $t4,$s2,$t3
	move $s2,$t4
	li $t5,1
	blt $s2,$s1,L1
	li $t5,0
L1:
	beq $t5,0,L3
	j L2
L3:
	li $v0, 1
	move $a0,$s3
	syscall
	li $v0,11
	li $a0,'\n'
	syscall

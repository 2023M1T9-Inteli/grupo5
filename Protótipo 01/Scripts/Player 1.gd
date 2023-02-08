extends KinematicBody2D
# codigo do jogador 1

# var do personagem
var motion = Vector2.ZERO;
# var da velocidade
var speed = 350;

func _process(delta):
	
	# chão ou ar
	if is_on_floor():
		# animação de corrida, só funciona se estiver no chão
		if  Input.is_action_pressed("ui_right") or  Input.is_action_pressed("ui_left"):
			$AnimatedSprite.play("run")
		# animação do jogador parado
		if motion.x == 0:
			$AnimatedSprite.play("idle")	
		# comando de pulo, muda a animação e só funciona se estiver no chão
		if Input.is_action_pressed("ui_up"):
			motion.y = -400
			$AnimatedSprite.play("jump")
	else:
		# comando para ele cair
		motion.y += 10
		# altera a animação
		if Input.is_action_pressed("ui_up"):
			$AnimatedSprite.play("jump")
		# comando para cair mais rapido
		if Input.is_action_pressed("ui_down"):
			motion.y += 50
		# se ele estiver caindo, muda a animação
		else:
			$AnimatedSprite.play("fall")
	
	# movimentação
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		# inverte a animação
		$AnimatedSprite.flip_h = true
	else:
		motion.x = 0
		
	move_and_slide(motion, Vector2.UP)

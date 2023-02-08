extends KinematicBody2D

# variáveis
var motion = Vector2.ZERO;
# var da velocidade
var speed = 350;

func _process(delta):
	
	#Chão ou Ar
	if is_on_floor():
		if  Input.is_action_pressed("right") or  Input.is_action_pressed("left"):
			$AnimatedSprite.play("run")
		if motion.x == 0:
			$AnimatedSprite.play("idle")	
		if Input.is_action_pressed("jump"):
			motion.y = -400
			$AnimatedSprite.play("jump")
	else:
		motion.y += 10
		if Input.is_action_pressed("jump"):
			$AnimatedSprite.play("jump")
		if Input.is_action_pressed("fall"):
			motion.y += 50
		else:
			$AnimatedSprite.play("fall")
	
	#Movimentação
	if Input.is_action_pressed("right"):
		motion.x = speed
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("left"):
		motion.x = -speed
		$AnimatedSprite.flip_h = true
	else:
		motion.x = 0
		
	move_and_slide(motion, Vector2.UP)

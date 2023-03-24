extends KinematicBody2D

# variavel da velocidade do personagem
export var speed : float = 100
# variavel do personagem
var motion = Vector2.ZERO

func _physics_process(_delta):
	pass

	#Movimentação
#	motion.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
#	motion.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
#	motion = motion.normalized()

	#Aceleração
#	if Input.get_action_strength("aceleration"):
#		speed = 150
#	if Input.is_action_just_released("aceleration"):
#		speed = 100

	#Animação
#	if Input.get_action_strength("action"):
#		$AnimatedSprite.play("colect_back")

#	if Input.is_action_just_released("ui_left"):
#		$AnimatedSprite.play("idle_side")
#		$AnimatedSprite.flip_h = true
#	elif Input.is_action_just_released("ui_right"):
#		$AnimatedSprite.play("idle_side")
#		$AnimatedSprite.flip_h = false
#	elif Input.is_action_just_released("ui_up"):
#		$AnimatedSprite.play("idle_back")
#	elif Input.is_action_just_released("ui_down"):
#		$AnimatedSprite.play("idle_front")

#	if Input.get_action_strength("ui_left"):
#		$AnimatedSprite.play("run_side")
#		$AnimatedSprite.flip_h = true
#	elif Input.get_action_strength("ui_right"):
#		$AnimatedSprite.play("run_side")
#		$AnimatedSprite.flip_h = false
#	elif Input.get_action_strength("ui_up"):
#		$AnimatedSprite.play("run_back")
#	elif Input.get_action_strength("ui_down"):
#		$AnimatedSprite.play("run_front")
	
#	move_and_slide(motion * speed)

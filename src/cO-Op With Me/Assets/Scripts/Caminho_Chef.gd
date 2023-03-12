#extends PathFollow2D


#export var runSpeed = 40

#func _process(delta):
	#set_offset(get_offset() + runSpeed * delta)
	#$AnimatedSprite.play("chef_run")
	#if unit_offset == 1:
	#	$AnimatedSprite.play("cook_back")
	#CollisionShape2D

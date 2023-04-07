extends Path2D

func _ready():
	#Comando para manter o perdonagem sem girar inicialmente
	$PathFollow2D/NPC_Atendente/AnimatedSprite.flip_h = false
	
func _physics_process(delta):
	#Animação inicial
	if Global.tem_bolo_pronto == 1:
		$PathFollow2D/NPC_Atendente/AnimatedSprite.play("idle_front")
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 0 * delta)
	#Animação caso esteja em movimento
	elif Global.tem_bolo_pronto == 0 and $PathFollow2D.get_offset() < 60:
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 30 * delta)
		$PathFollow2D/NPC_Atendente/AnimatedSprite.play("run_side")
		$PathFollow2D/NPC_Atendente/AnimatedSprite.flip_h = true
	elif Global.tem_bolo_pronto == 0 and $PathFollow2D.get_offset() >= 60 and $PathFollow2D.get_offset() < 120:
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 30 * delta)
		$PathFollow2D/NPC_Atendente/AnimatedSprite.play("run_front")
	elif Global.tem_bolo_pronto == 0 and $PathFollow2D.get_offset() >= 120 and $PathFollow2D.get_offset() < 170:
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 30 * delta)
		$PathFollow2D/NPC_Atendente/AnimatedSprite.play("run_side")
		$PathFollow2D/NPC_Atendente/AnimatedSprite.flip_h = false
	elif Global.tem_bolo_pronto == 0 and $PathFollow2D.get_offset() >= 170 and $PathFollow2D.get_offset() < 210:
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 30 * delta)
		$PathFollow2D/NPC_Atendente/AnimatedSprite.play("run_front")
	elif Global.tem_bolo_pronto == 0 and $PathFollow2D.get_offset() >= 210 and $PathFollow2D.unit_offset != 1:
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 30 * delta)
		$PathFollow2D/NPC_Atendente/AnimatedSprite.play("run_side")
		$PathFollow2D/NPC_Atendente/AnimatedSprite.flip_h = true
	elif Global.tem_bolo_pronto == 0 and $PathFollow2D.unit_offset == 1:
		$PathFollow2D/NPC_Atendente/AnimatedSprite.play("idle_back")
		

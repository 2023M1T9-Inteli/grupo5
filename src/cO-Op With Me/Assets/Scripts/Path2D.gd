extends Path2D


func _process(delta):
	#Comando para o Player seguir o caminho feito pelo PathFollow2D
	$PathFollow2D.set_offset($PathFollow2D.get_offset() + 40 * delta)
	#Condição para Player realizar animação de andando para baxo se o offset for menor que 180
	if $PathFollow2D.offset > 0 and $PathFollow2D.offset < 180:
		$PathFollow2D/Player_indro/AnimatedSprite.play("run_front")
	#Condição para Player realizar animação de andando para baxo se o offset for entre 180 e 370
	elif $PathFollow2D.offset >= 180 and $PathFollow2D.offset < 370:
		$PathFollow2D/Player_indro/AnimatedSprite.play("run_side")
	elif $PathFollow2D.offset >= 370:
		$PathFollow2D/Player_indro/AnimatedSprite.play("idle_front")


	print($PathFollow2D.offset)

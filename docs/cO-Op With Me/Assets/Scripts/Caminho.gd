extends Path2D

func _physics_process(delta):
	#Animação inicial
	if Global.andar == 0:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("idle_front")
	if $PathFollow2D.get_offset() < 25 and $PathFollow2D.get_offset() > 1:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("run_back")

	#Movimentação
	if Global.andar == 1 and $PathFollow2D.get_offset() < 25:
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 30 * delta)

	if Global.andar == 1 and $PathFollow2D.get_offset() >= 25 and $PathFollow2D.offset < 30  and Global.pegou_ovo == 0:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("cook_back")
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 0 * delta)

	if Global.andar == 1 and  $PathFollow2D.get_offset() >= 25 and $PathFollow2D.get_offset() < 83 and Global.pegou_ovo == 1:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("run_side")
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 30 * delta)

	if Global.andar == 1 and  $PathFollow2D.get_offset() >= 83 and Global.pegou_ovo == 1:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("cook_back")
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 0 * delta)

	if Global.andar == 1 and  $PathFollow2D.offset >= 83 and $PathFollow2D.offset < 122 and Global.pegou_ovo == 0:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("run_side")
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 30 * delta)

	if Global.andar == 1 and $PathFollow2D.offset >= 122 and Global.pegou_tabuleiro == 0:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("idle_back")
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 0 * delta)
		
	if Global.andar == 1 and  $PathFollow2D.offset >= 122 and $PathFollow2D.offset < 220 and Global.pegou_tabuleiro == 1:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("run_side")
		$PathFollow2D/NPC_Otto/AnimatedSprite.flip_h = true
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 30 * delta)

	if Global.andar == 1 and  $PathFollow2D.offset >= 220 and $PathFollow2D.offset < 225 and Global.colocou_bancada == 0:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("idle_back")
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 0 * delta)

	if Global.andar == 1 and Global.colocou_bancada == 1:
		$PathFollow2D.set_offset($PathFollow2D.get_offset() + 30 * delta)

	if Global.andar == 1 and $PathFollow2D.offset >= 220 and $PathFollow2D.offset < 243 and Global.colocou_bancada == 1:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("run_side")
		$PathFollow2D/NPC_Otto/AnimatedSprite.flip_h = true
	
	if Global.andar == 1 and $PathFollow2D.offset >= 243 and $PathFollow2D.offset < 281 and Global.colocou_bancada == 1:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("run_front")

	if Global.andar == 1 and $PathFollow2D.offset >= 281:
		$PathFollow2D/NPC_Otto/AnimatedSprite.play("idle_side")
		$PathFollow2D/NPC_Otto/AnimatedSprite.flip_h = false
		

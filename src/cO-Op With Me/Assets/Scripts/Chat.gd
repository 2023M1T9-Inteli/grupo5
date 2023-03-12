extends TextureRect

var contador = 0

func _ready():
	visible = false
	$Context.visible = false
	$Context2.visible = false
	$Mecanica.visible = false
	$Fim_context.visible = false
	$Pedido.visible = false
	$Pedido2.visible = false
	$Resposta_Atendente.visible = false
	$Laura_Cliente.visible = false
	$Kaled_Atendente.visible = false
	

func _process(delta):
	if Input.is_action_just_pressed("action"):
		contador += 1
		Global.chat = 1
	if contador == 1:
		visible = true
		$Context.visible = true
		flip_h = true
		flip_v = true
	if contador == 2:
		$Context.visible = false
		$Context2.visible = true
	if contador == 3:
		$Context2.visible = false
		$Mecanica.visible = true
	if contador == 4:
		$Mecanica.visible = false
		$Fim_context.visible = true
	if contador == 5:
		flip_h = false
		flip_v = false
		$Fim_context.visible = false
		$Pedido.visible = true
		$Laura_Cliente.texture = load ("res://Assets/Art/Interface/Laura.png")
		$Laura_Cliente.visible = true
	if contador == 6:
		$Pedido.visible = false
		$Pedido2.visible = true
		$Laura_Cliente.texture = load ("res://Assets/Art/Interface/Laura.png")
		$Laura_Cliente.visible = true	
	if contador == 7:
		$Pedido2.visible = false
		$Resposta_Atendente.visible = true
		$Kaled_Atendente.texture = load ("res://Assets/Art/Interface/Atendente.png")
		$Laura_Cliente.visible = false
		$Kaled_Atendente.visible = true	
	if contador >= 8:
		$Resposta_Atendente.visible = false
		$Kaled_Atendente.visible = false
		visible = false
		Global.chat = 0
		
		
	

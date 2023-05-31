# Script para interação com a geladeira
extends Area2D

# Variável que diz se o jogador está na área
var in_area = 0
# Variável de estado da geladeira
var estado_gel = 0

func _on_Refrigerator_body_entered(body):
	# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1
	if body.name == "NPC_Otto":
		in_area = 2

	estado_gel = 2

func _on_Refrigerator_body_exited(body):
	# Condicional que diz que o jogador saiu da área
	estado_gel = 3
	if body.name == "Player" or body.name == "NPC_Otto":
		in_area = 0

func _process(_delta):
	# Botão para pegar o ovo, só funciona quando o jogador aperta o "E", está na area e tem ovo na geladeira.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_ovo == 1:
		Global.hide_slot = 1
		Global.pegou_ovo = 1

	# Botão para pegar o leite, só funciona quando o jogador aperta o "E", está na area, já pegou ovo antes e tem leite na geladeira.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_ovo == 0 and Global.tem_leite == 1:
		Global.hide_slot = 1
		Global.pegou_leite = 1

	# Botão para pegar o chocolate, só funciona quando o jogador aperta o "E", está na area, já pegou ovo, leite e farinha antes e tem chocolate na geladeira.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_ovo == 0 and Global.tem_leite == 0 and Global.tem_trigo == 0 and Global.tem_choco == 1:
		Global.hide_slot = 1
		Global.pegou_choco = 1
		
#Condições para o estado da geladeira
	if estado_gel == 0:
		$Anim_gel.play("normal")
	elif estado_gel == 1:
		$Anim_gel.play("brilho")
	elif estado_gel == 2:
		$Anim_gel.play("abrindo")
	elif estado_gel == 3:
		$Anim_gel.play("fechando")
		
#Condições para o estado da geladeira mudar
	if in_area == 0 and (Global.tem_ovo == 1 or in_area == 0 and Global.tem_ovo == 0 and Global.tem_leite == 1 or in_area == 0 and Global.tem_trigo == 0 and Global.tem_choco == 1):
		estado_gel = 1
		
	if in_area == 0 and Global.pegou_ovo == 1 or in_area == 0 and Global.pegou_leite == 1 or in_area == 0 and Global.pegou_choco == 1 or in_area == 0 and Global.andar == 0:
		estado_gel = 0
	
	

	
		
	

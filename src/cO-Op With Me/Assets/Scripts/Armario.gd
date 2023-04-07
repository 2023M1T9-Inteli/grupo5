# Script para interação com o armário
extends Area2D

# Variável que diz se o jogador está na área
var in_area = 0
#Variável de estado do armário
var estado_arm = 0

func _on_Armario_body_entered(body):
	# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1
	if body.name == "NPC_Otto":
		in_area = 2


func _on_Armario_body_exited(body):
	# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0
	if body.name == "NPC_Otto":
		in_area = 0
		
func _process(_delta):
	# Botão para pegar a farinha, só funciona quando o jogador aperta o "E", está na area e tem farinha no armário.
	if Input.is_action_just_pressed("action") and in_area == 1 and  Global.tem_ovo == 0 and Global.tem_leite == 0 and Global.tem_trigo == 1:
		Global.hide_slot = 1
		Global.pegou_trigo = 1

#Condições para a animação do armário
	if estado_arm == 0:
		$AnimatedSprite.play("normal")
	if estado_arm == 1:
		$AnimatedSprite.play("brilho")
		
#Condições para mudar a variável de estado
	if Global.tem_leite == 0 and Global.tem_trigo == 1 and Global.pegou_trigo == 0:
		estado_arm = 1
	else:
		estado_arm = 0

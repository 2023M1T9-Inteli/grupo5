# Script para interação com a geladeira
extends Area2D

# Variável que diz se o jogador está na área
var in_area = 0

func _on_Refrigerator_body_entered(body):
	# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1

func _on_Refrigerator_body_exited(body):
	# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	# Botão para pegar o ovo, só funciona quando o jogador aperta o "E", está na area e tem ovo na geladeira.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_ovo == 1:
		Global.hide_slot1 = 1
		Global.pegou_ovo = 1

	# Botão para pegar o chocolate, só funciona quando o jogador aperta o "E", está na area, já pegou ovo antes e tem chocolate na geladeira.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_ovo == 0 and Global.tem_choco == 1:
		Global.hide_slot3 = 1
		Global.tem_choco = 0
		Global.pegou_choco = 1

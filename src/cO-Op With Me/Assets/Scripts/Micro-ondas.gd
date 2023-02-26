# Script para interação com o micro-ondas
extends Area2D

# Variável que diz se o jogador está na área
var in_area = 0

func _on_Microondas_body_entered(body):
	# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1

func _on_Microondas_body_exited(body):
	# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	# Botão de interação com o objeto, só funciona quando o jogador aperta o "E", está na area e pegou o chocolate.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_choco == 1:
		Global.hide_slot3 = 0
		Global.pegou_choco = 0

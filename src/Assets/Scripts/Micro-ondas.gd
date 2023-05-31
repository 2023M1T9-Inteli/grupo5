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

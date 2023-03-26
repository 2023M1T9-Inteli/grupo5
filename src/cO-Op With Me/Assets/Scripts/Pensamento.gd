# Script da tela de pensamento do jogador (tela que vem antes do menu)
extends Node2D

# Variável que recebe o plugin de dialogo 
var d = Dialogic.start("pensa")

func _ready():
	# começa o dialogo
	add_child(d)

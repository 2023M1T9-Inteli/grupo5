# Script da primeira tela do jogo, a logo
extends Control

# variavel que diz quando o timer acabou
var time_end = false

# começa um timer
func _ready():
	$Timer.start()

func _on_Timer_timeout():
	# quando o timer acaba ele emiti um sinal e troca o valor da variavel
	time_end = true
	
func _process(_delta):
	# quando a veriavel é verdadeira troca de cena
	if time_end == true:
		get_tree().change_scene("res://Assets/Scenes/Introdução.tscn")

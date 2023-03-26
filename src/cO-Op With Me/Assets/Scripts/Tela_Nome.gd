extends Control
# Script da tela onde o jogador coloca o nome dele

func _ready():
	$LineEdit.text

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Assets/Scenes/Tela_Butões.tscn")
func _on_jogar_pressed():
	# Muda a variável do nome do jogador
	Global.nome = $LineEdit.text
	get_tree().change_scene("res://Assets/Scenes/Fase 01.tscn")
	

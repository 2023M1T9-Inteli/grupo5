extends Control
# Script da tela onde o jogador coloca o nome dele

func _ready():
	$LineEdit.text

# troca para a tela principal
func _on_TextureButton_pressed():
	get_tree().change_scene("res://Assets/Scenes/Tela_Butões.tscn")


func _on_jogar_pressed():
	# Muda a cena para a fase1
	get_tree().change_scene("res://Assets/Scenes/Fase 01.tscn")
	#cria uma variável com o nome do jogador
	var player_name = get_node("LineEdit").text
	#conecta essa variável com o plugin, assim o nome que o jogador coloca aparece nos dialogos
	Dialogic.set_variable("player_name", player_name)
	
	Audio.stop_music()

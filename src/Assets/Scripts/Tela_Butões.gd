extends Control
# Script da tela do menu principal
func _ready():
	pass # Replace with function body.

# troca para a tela de colocar o nome
func _on_TextureButton1_pressed():
	get_tree().change_scene("res://Assets/Scenes/Tela_Nome.tscn")

# sai do jogo
func _on_TextureButton2_pressed():
	get_tree().quit()

# troca para a tela de configuração do volume
func _on_Som_pressed():
	get_tree().change_scene("res://Assets/Scenes/Tela_Som.tscn")

# troca para a tela de creditos
func _on_coop_pressed():
	get_tree().change_scene("res://Assets/Scenes/Desenvolvedores.tscn")

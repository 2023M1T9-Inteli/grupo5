extends Control


func _ready():
	$LineEdit.text

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Assets/Scenes/Tela_Butões.tscn")
func _on_jogar_pressed():
	Global.nome = $LineEdit.text
	get_tree().change_scene("res://Assets/Scenes/Fase 01.tscn")
	

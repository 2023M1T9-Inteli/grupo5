extends Control

func _ready():
	pass # Replace with function body.


func _on_TextureButton1_pressed():
	get_tree().change_scene("res://Assets/Scenes/Tela_Nome.tscn")


func _on_TextureButton2_pressed():
	get_tree().quit()


func _on_Som_pressed():
	get_tree().change_scene("res://Assets/Scenes/Tela_Som.tscn")


func _on_coop_pressed():
	get_tree().change_scene("res://Assets/Scenes/Desenvolvedores.tscn")


func _on_TextureButton_pressed():
	pass # Replace with function body.

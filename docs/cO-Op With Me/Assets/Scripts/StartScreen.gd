extends Control

func _ready():
	$"VBoxContainer (start)/Button(start)".grab_focus()
	
	
func _on_Buttonstart_pressed():
	get_tree().change_scene("res://Assets/Scenes/Fase 01.tscn")

func _on_Buttoncontrols_pressed():
	get_tree().change_scene ("res://Assets/Prefab/ControlsScreen.tscn")

func _on_Buttonexit_pressed():
	get_tree().quit()
	

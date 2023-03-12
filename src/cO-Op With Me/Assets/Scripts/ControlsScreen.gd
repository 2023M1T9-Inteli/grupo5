extends Node2D

func _ready():
	$"Button(return)".grab_focus()


func _on_Buttonreturn_pressed():
	get_tree().change_scene ("res://Assets/Scenes/StartScreen.tscn")

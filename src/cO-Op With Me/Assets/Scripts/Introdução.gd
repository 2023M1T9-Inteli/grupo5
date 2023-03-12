extends Node2D


func _process(delta):
	if Input.is_action_just_pressed("2"):
		get_tree().change_scene("res://Assets/Scenes/Fase 01.tscn")

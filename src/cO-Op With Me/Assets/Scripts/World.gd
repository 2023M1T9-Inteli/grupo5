# Script para a fase
extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("1"):
		get_tree().change_scene("res://Assets/Scenes/Introdução.tscn")

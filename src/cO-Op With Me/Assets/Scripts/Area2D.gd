#Script para mudança da introdução para a fase 1
extends Area2D



#Código para mudar de cena quando o player chegar na Area2D
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Assets/Scenes/Fase 01.tscn")

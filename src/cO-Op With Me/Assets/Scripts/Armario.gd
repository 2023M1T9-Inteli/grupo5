extends Area2D

var in_area = 0

func _on_Armario_body_entered(body):
	if body.name == "Player":
		in_area = 1

func _on_Armario_body_exited(body):
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_trigo == 1:
		Global.hide_slot2 = 1
		Global.tem_trigo = 0
		Global.pegou_trigo = 1

extends Area2D

var in_area = 0

func _on_Microondas_body_entered(body):
	if body.name == "Player":
		in_area = 1

func _on_Microondas_body_exited(body):
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_choco == 1:
		Global.hide_slot3 = 0
		Global.pegou_choco = 0

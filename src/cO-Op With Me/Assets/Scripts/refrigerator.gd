extends Area2D

var in_area = 0

func _on_Refrigerator_body_entered(body):
	if body.name == "Player":
		in_area = 1

func _on_Refrigerator_body_exited(body):
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	print(in_area)
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_ovo == 1:
		Global.hide_slot1 = 1
		Global.pegou_ovo = 1
		
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_ovo == 0 and Global.tem_choco == 1:
		Global.hide_slot3 = 1
		Global.tem_choco = 0
		Global.pegou_choco = 1

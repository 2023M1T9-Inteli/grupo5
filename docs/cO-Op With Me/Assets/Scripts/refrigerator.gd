extends Area2D

var in_area = 0

func _on_Refrigerator_body_entered(body):
	if body.name == "Player":
		in_area = 1

func _on_Refrigerator_body_exited(body):
	if body.name == "Player":
		in_area = 0
		$Label.text = ""

func _process(delta):
	print(in_area)
	if Input.is_action_just_pressed("action") and in_area == 1:
		$PopupMenu.popup()
	elif in_area == 0:
		$PopupMenu.visible = false

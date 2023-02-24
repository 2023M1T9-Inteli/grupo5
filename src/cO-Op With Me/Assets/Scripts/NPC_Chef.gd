extends Area2D

var in_area = 0

func _ready():
	$Label.add_color_override("font_color", Color(0, 0, 0))

func _on_NPC_Chef_body_entered(body):
	if body.name == "Player":
		in_area = 1

func _on_NPC_Chef_body_exited(body):
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	if Input.is_action_just_pressed("action") and in_area == 1:
		$Label.text = "Olá"
	
	if in_area == 0:
		$Label.text = ""

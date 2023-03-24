extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Andar2.chat == 0
	$ColorRect.visible = false
	$Button.visible = false
	$Button2.visible = false


func _process(delta):
	if Input.is_action_just_pressed("Action"):
		$ColorRect.visible = true
		$Button.visible = true
		$Button2.visible = true
		Andar2.chat == 1
		

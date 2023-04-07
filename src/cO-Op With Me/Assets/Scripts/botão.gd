# Script da mecanica da fase 2, ainda em desevolvimento.
extends Control

# Deixa tudo invisivel
func _ready():
	$ColorRect.visible = false
	$Button.visible = false
	$Button2.visible = false


func _process(_delta):
	# Deixa visivel quando aperta "E"
	if Input.is_action_just_pressed("action"):
		$ColorRect.visible = true
		$Button.visible = true
		$Button2.visible = true
		

extends Node2D
onready var music = preload("res://Assets/Art/Audio/Devonshire Waltz Allegretto - Office.mp3")
# variáveis que conectam os diálogos do plug-in Dialogic com o script
var dialogo1 = Dialogic.start("Final1")
var dialogo2 = Dialogic.start("Final2")
var tl_end = 0
func _ready():
	#Inicia o primeiro diálogo assim que a cena começa
	get_parent().add_child(dialogo1)
	dialogo1.connect("dialogic_signal", self, "dialog_listener")
	Audio.play(music)
# Inicia o segundo diálogo assim que o jogador se aproxima da NPC Yasmin
func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_parent().add_child(dialogo2)
		dialogo2.connect("dialogic_signal", self, "dialog_listener")
func _process(delta):
	if tl_end == 1:
		Global.andar = 1

func dialog_listener(string):
	# função que recebe sinal do plugin de dialogo
	match string:
		"tl_end":
			tl_end = 1

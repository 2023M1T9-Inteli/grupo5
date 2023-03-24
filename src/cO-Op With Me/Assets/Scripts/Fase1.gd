# Script para a fase
extends Node2D

var dialogo1 = Dialogic.start("cozinha1")
var dialogo2 = Dialogic.start("cozinha2")
var entrega = Dialogic.start("Entrega_bolo")
var tl_end = false

func _ready():
	get_parent().add_child(dialogo1)
	dialogo1.connect("dialogic_signal", self, "dialog_listener")
	print(Global.nome)

func _process(_delta):
	if tl_end == true:
		Global.andar = 1
	elif tl_end == false:
		Global.andar = 0
	if $Areas/Bancada/BoloPronto.visible == true:
		get_parent().add_child(entrega)
		
func dialog_listener(string):
	match string:
		"tl_end":
			tl_end = true
		"tl_start":
			tl_end = false

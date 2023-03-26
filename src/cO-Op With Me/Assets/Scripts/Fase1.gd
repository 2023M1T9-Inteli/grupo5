# Script para a fase
extends Node2D

# Variável que recebe um dialogo do plugin
var dialogo1 = Dialogic.start("cozinha1")
# Variável que recebe outro dialogo do plugin
var dialogo2 = Dialogic.start("cozinha2")
# Variável que recebe outro dialogo do plugin
var entrega = Dialogic.start("Entrega_bolo")
# Variável para dizer que está acontecendo um dialogo
var in_dial = 0
# Variável que sinaliza que o dialogo acabou
var tl_end = false


func _ready():
	# Começa um dialogo
	get_parent().add_child(dialogo1)
	dialogo1.connect("dialogic_signal", self, "dialog_listener")
	
func _process(_delta):
	# Quando o dialogo termina, da velocidade para o jogador
	if tl_end == true:
		Global.andar = 1
	elif tl_end == false:
		Global.andar = 0
	# Começa outro dialogo
	if $Areas/Bancada/BoloPronto.visible == true and in_dial == 0:
		get_parent().add_child(entrega)
		in_dial = 1
		
func dialog_listener(string):
	# função que recebe sinal do plugin de dialogo
	match string:
		"tl_end":
			tl_end = true
		"tl_start":
			tl_end = false

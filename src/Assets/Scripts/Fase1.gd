# Script para a fase 1
extends Node2D

# Variável que recebe um dialogo do plugin
var dialogo1 = Dialogic.start("cozinha1")
# Variável que recebe outro dialogo do plugin
var dialogo2 = Dialogic.start("cozinha2")
# Variável que recebe outro dialogo do plugin
var entrega = Dialogic.start("Entrega_bolo")
# Variável que recebe outro dialogo do plugin
var fim_bolo = Dialogic.start("otto_player")
# Variável que recebe outro dialogo do plugin
var player_kaled = Dialogic.start("player_kaled")
# Variável para dizer que está acontecendo um dialogo
var in_dial = 0
# Variável que sinaliza que o dialogo acabou
var tl_end = 1
var tl2_end = 1
var tl3_end = 1
#variável de estado que muda quando o player entra na área 2D
var estado = 0

# Variavel que carrega a trilha sonora da fase


func _ready():
	$AudioStreamPlayer.play()
	# Começa um dialogo
	get_parent().add_child(dialogo1)
	dialogo1.connect("dialogic_signal", self, "dialog_listener")
	
func _process(_delta):

	##Condições para mudar a global andar e mudar a velocidade do player
	if tl_end == 0 and tl2_end == 1 and tl3_end == 1 and $Areas/Bancada/bolo_pronto.visible == false or tl_end == 0 and tl2_end == 0 and tl3_end == 1 and estado == 0:
		Global.andar = 1
	else:
		Global.andar = 0
	#Condições para começar os diálogos
	if $Areas/Bancada/bolo_pronto.visible == true and in_dial == 0:
		get_parent().add_child(fim_bolo)
		fim_bolo.connect("dialogic_signal", self, "dialog_listener")
		in_dial = 1
	if $Personagens/Path2D2/PathFollow2D.unit_offset == 1 and in_dial == 2:
		get_parent().add_child(entrega)
		in_dial = 3
	#Condições para mudar as globais e iniciar outro diálogo
	if tl3_end == 0 and in_dial == 2:
		Global.tem_bolo_pronto = 0
		Global.andar = 0

	# Muda o valor da trilha sonora da fase
	Audio.change_volume(Global.volume)
		
func dialog_listener(string):
	# função que recebe sinal do plugin de dialogo
	match string:
		"tl_start":
			tl_end = 1
		"tl_end":
			tl_end = 0
		"tl2_start":
			tl2_end = 1
		"tl2_end":
			tl2_end = 0
		"tl3_start":
			tl3_end = 1
		"tl3_end":
			tl3_end = 0
		"end_sound":
			$AudioStreamPlayer.stop()

func _on_NPC_Atendente_body_entered(body):
	#Condição para começar o diálogo depois do player entrar na área
	if body.name == "Player":
		if Global.pegou_bolo_pronto == 1 and in_dial == 1:
			get_parent().add_child(player_kaled)
			player_kaled.connect("dialogic_signal", self, "dialog_listener")
			in_dial = 2
			Global.pegou_bolo_pronto = 0
			Global.andar = 0
	#Condição para mudar a variável estado
	if Global.pegou_bolo_pronto == 1:
		estado = 1

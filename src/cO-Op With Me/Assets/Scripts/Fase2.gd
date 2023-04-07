extends Node2D

var contador = 0
#as variáveis abaixo recebem um plugin do diálogo
onready var hospital1 = Dialogic.start("hospital1")
onready var hospital2 = Dialogic.start("hospital2")
onready var hospital3 = Dialogic.start("hospital3")
onready var hospital4 = Dialogic.start("hospital4")
onready var hospital5 = Dialogic.start("hospital5")
onready var hospital6 = Dialogic.start("hospital6")
onready var hospital7 = Dialogic.start("hospital7")
# variáveis que são emitidas peo dialogic se um diálogo acabou ou não ( bool )
var tl_end = false
# variável que é emitida pelo Dialogic se o diálogo começou ou não ( bool )
var tl_start = false
# as variáveis enterde servem para não rodarem a func body enterd a todo momento ( bool )
var enterd = true
var enterd2 = true
# verifica se a ficha está aberta
var abrir_ficha = false
# sinal que emite se o sinal acabou
var chat_end = true
# variável que avalia se o player está em diálogo ou não
var in_dial = 0
# variável que indica 
var in_area = 0
var estado = 0

var andando = true

var contador2 = 0

var chat3 = true

var chat4 = true

var chat5 = true

var chat6 = true

var chat_parte2 = true
func _ready():
	# Trilha sonora da fase
	$Trilha_Sonora.play()
	
	# roda o diálogo inicial e deixa as pranchetas invisíveis
	$player/BotaoE1.visible = false
	$player/BotaoE2.visible = false
	$BotaoEscolha1.visible = false
	$BotaoEscolha2.visible = false
	$BotaoEscolha3.visible = false
	$NotaBotErrado.visible = false
	$NotaBotCerto.visible = false
	$barra.visible = false
	$notificacao2.visible = false
	add_child(hospital1)
	hospital1.connect("dialogic_signal", self, "dialog_listener")
	

func _process(_delta):
	# cada vez que o player apertar a tecla "E" ( action ) executa uma ação diferente
	if Input.is_action_just_pressed("action") and in_dial == 0 and abrir_ficha == true and tl_end == true and estado == 0:
		$BotaoEscolha1.visible = true
		estado = 1
		
	if estado == 2 and in_dial == 0 and Input.is_action_just_pressed("action"):
		# começa o diálogo após apertar "E"
		tl_end = false
		get_parent().add_child(hospital3)
		hospital3.connect("dialogic_signal", self, "dialog_listener")
		$BotaoEscolha1.visible = false
		$NotaBotCerto.visible = false
	if chat3 == false:
		in_dial = 1
	#if Input.is_action_just_pressed("action") and in_dial == 1:
	if Input.is_action_just_pressed("action") and in_dial == 1 and estado == 2:
		$BotaoEscolha2.visible = true
	
	if Input.is_action_just_pressed("action") and estado == 3 and abrir_ficha == true and in_dial == 1 and chat4 == true:
		$BotaoEscolha2.visible = false
		$NotaBotCerto.visible = false
		$NotaBotErrado.visible = false
		# começa o diálogo após apertar "E"
		add_child(hospital4)
		hospital4.connect("dialogic_signal", self, "dialog_listener")
		estado = 4
		
	if tl_end and chat4 == false:
		in_dial = 2
		$BotaoEscolha2.visible = false
		
	#if in_dial == 2 and abrir_ficha == true and Input.is_action_just_pressed("action"):
	if in_dial == 2 and abrir_ficha == true and Input.is_action_just_pressed("action") and estado == 4:
		$BotaoEscolha3.visible = true
		
	if abrir_ficha == true and in_dial == 2 and Input.is_action_just_pressed("action") and estado == 5:
		$BotaoEscolha3.visible = false
		$NotaBotCerto.visible = false
		tl_end = false
		abrir_ficha = false
		# começa o diálogo após apertar "E"
		get_parent().add_child(hospital5)
		hospital5.connect("dialogic_signal", self, "dialog_listener")
	if chat5 == false and tl_end == true:
		in_dial = 3
		estado = 6
		$notificacao2.visible = true
		
	if Input.is_action_just_pressed("action") and in_area == 1 and estado == 6 and abrir_ficha == false:
		contador2 += 1
		abrir_ficha = false
		$barra.visible = true
		
	if contador2 in range(20):
		$notificacao2.visible = false
		
	if contador2 == 1:
			$player/BotaoE2.visible = true
			$player/BotaoE1.visible = false
			$player/AnimatedSprite.play("cirurgia")
			$barra.play("0")
	if contador2 == 2:
			$player/BotaoE2.visible = false
			$player/BotaoE1.visible = true
			$player/AnimatedSprite.play("cirurgia")
			$barra.play("0")
	if contador2 == 3:
			$player/BotaoE2.visible = true
			$player/BotaoE1.visible = false
			$player/AnimatedSprite.play("cirurgia")
			$barra.play("1")
	if contador2 == 4:
			$player/BotaoE2.visible = false
			$player/BotaoE1.visible = true
			$player/AnimatedSprite.play("cirurgia")
			$barra.play("1")
	if contador2 == 5:
			$player/BotaoE2.visible = true
			$player/BotaoE1.visible = false
			$player/AnimatedSprite.play("cirurgia")
			$barra.play("2")
	if contador2 == 6:
			$player/BotaoE2.visible = false
			$player/BotaoE1.visible = true
			$player/AnimatedSprite.play("cirurgia")
			$barra.play("2")
	if contador2 == 7:
			$player/BotaoE2.visible = true
			$player/BotaoE1.visible = false
			$player/AnimatedSprite.play("cirurgia")
			$barra.play("3")
	if contador2 == 8:
			$player/BotaoE2.visible = false
			$player/BotaoE1.visible = true
			$player/AnimatedSprite.play("cirurgia")
			$barra.play("3")
	if contador2 == 9:
			$player/BotaoE2.visible = true
			$player/BotaoE1.visible = false
			$player/AnimatedSprite.play("cirurgia")
			$barra.play("3")
	if contador2 == 10:
			$player/BotaoE2.visible = false
			$player/BotaoE1.visible = true
			$player/AnimatedSprite.play("cirurgia")
			$barra.play("4")
	if contador2 == 11:
		$player/BotaoE2.visible = false
		$player/BotaoE1.visible = false
		$player/AnimatedSprite.play("idle_front")
		$BotaoEscolha2.visible = false
		$barra.visible = false
		tl_end = false
		get_parent().add_child(hospital7)
		hospital7.connect("dialogic_signal", self, "dialog_listener")
		# recebe o sinal do diálogo igualando a velocidade do boneco a 0
	if tl_end == true:
		Global.andar = 1
	if tl_end == false:
		Global.andar = 0
	if andando == false:
		Global.andar = 0
		
func _on_Area2D_body_entered(_body):
	# quando o corpo entrar dentro da área 2d, comça o diálogo e avalia se o corpo já entrou alguma vez
	if enterd:
		tl_end = false
		get_parent().add_child(hospital2)
		hospital2.connect("dialogic_signal", self, "dialog_listener")
		enterd = false
		abrir_ficha = true
		$notificacao.visible = false

func _on_botao1_pressed():
	# condicional que executa uma ação após pressionar no botão descrito
	if abrir_ficha == true:
		$NotaBotErrado.visible = false
		$BotaoEscolha1.visible = true
		$NotaBotCerto.visible = true
		estado = 2
		
func _on_botao2_pressed():
	# condicional que executa uma ação após pressionar no botão descrito
	if abrir_ficha == true:
		$NotaBotErrado.visible = true
		$NotaBotCerto.visible = false
		
func _on_botao3_pressed():
	# condicional que executa uma ação após pressionar no botão descrito
	if abrir_ficha == true:
		$NotaBotErrado.visible = true
		$NotaBotCerto.visible = false
	
func _on_botao4_pressed():
	# condicional que executa uma ação após pressionar no botão descrito
	if abrir_ficha == true:
		$NotaBotErrado.visible = false
		$NotaBotCerto.visible = true
		estado = 3
	
func _on_botao5_pressed():
	# condicional que executa uma ação após pressionar no botão descrito
	if abrir_ficha == true:
		$NotaBotErrado.visible = false
		$NotaBotCerto.visible = true
		estado = 5
func _on_botao6_pressed():
	# condicional que executa uma ação após pressionar no botão descrito
	if abrir_ficha == true:
		$NotaBotErrado.visible = true
		$NotaBotCerto.visible = false
		
func dialog_listener(string):
	# função que recebe sinal do plugin de dialogo
	match string:
		"tl_end":
			tl_end = true
		"tl_start":
			tl_end = false
		"chat_end":
			chat_end = false
		"tl_end":
			tl_end = true
		"chat3" :
			chat3 = false
		"chat4" :
			chat4 = false
		"chat5" :
			chat5 = false
		"chat6":
			chat6 = false
		"chat_parte2":
			chat_parte2 = false
		"end_sound":
			$Trilha_Sonora.stop()
func _on_area_cirurgia_body_entered(body):
	#função que começa a cirurgia
	if body.name == "player":
		in_area = 1
		$player/BotaoE1.visible = true
		$player/BotaoE2.visible = false
		enterd2 = false

func _on_area_cirurgia_body_exited(body):
	
	if body.name == "player":
		in_area = 2
		$player/BotaoE1.visible = false
		$player/BotaoE2.visible = false

# Script para interação com a Batedeira
extends Area2D

# Variável que diz se o jogador está na área
var in_area = 0
#Variável da notificação
var notificacao = 0
#Variáveis de estado da batedeira
var estado_bat = 0
var parada = false


func _ready():
	$Temporizador.visible = false
	$"Notificação".visible = false


func _on_Batedeira_body_entered(body):
	# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1

func _on_Batedeira_body_exited(body):
	# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	if notificacao == 1:
		$Temporizador.visible = true
		$Temporizador.play("Tempo-batedeira")
	else:
		$Temporizador.visible = false
#Mudança das variáveis de estado da batedeira
	if estado_bat == 0:
		$Anim_bat.play("Bat_normal")
	elif estado_bat == 1:
		$Anim_bat.play("Bat_brilho_normal")
	elif estado_bat == 2:
		$Anim_bat.play("Bat_batendo")
	elif estado_bat == 3:
		$Anim_bat.play("Bat_brilho_batendo")

	# Botão de interação com o objeto, só funciona quando o jogador aperta o "E", está na area e pegou o ovo.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_ovo == 1:
		Global.hide_slot = 0
		Global.pegou_ovo = 0
		Global.tem_ovo = 0
	# Botão de interação com o objeto, só funciona quando o jogador aperta o "E", está na area e pegou o chocolate.
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_leite == 1:
		Global.hide_slot = 0
		Global.pegou_leite = 0
		Global.tem_leite = 0
	#Botão de interação com o objeto
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_trigo == 1:
		Global.hide_slot = 0
		Global.pegou_trigo = 0
		Global.tem_trigo = 0
	#Botão de interação com o objeto
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_choco == 1:
		Global.hide_slot = 0
		Global.pegou_choco = 0
		Global.tem_choco = 0
		$Timer.start()
		notificacao = 1
	#Botão de interação com o objeto
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_tabuleiro == 0  and notificacao == 0 and Global.pegou_tabuleiro == 1 and Global.tem_massa == 1:
		Global.hide_slot = 1
		Global.pegou_massa = 1
		Global.pegou_tabuleiro = 0
		$"Notificação".visible = false
		notificacao = 0
		parada = true
#Animação da batedeira
	if Global.tem_ovo == 1 and Global.pegou_ovo == 0 or parada == true:
		estado_bat = 0 
	elif Global.pegou_ovo == 1:
		estado_bat = 1
	elif Global.pegou_choco == 1 or Global.pegou_leite == 1 or Global.pegou_trigo == 1:
		estado_bat = 3 
	else:
		estado_bat = 2
	

	
func _on_Timer_timeout():
	notificacao = 0
	$"Notificação".visible = true
	
	






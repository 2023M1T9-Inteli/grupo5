# Script para interação com o fogão
extends Area2D
#Variável para identificar entrada de algo na área
var in_area = 0
#Variável para a notificação
var notificacao = 0
#Variável para o estado do fogão
var estado_fog = 0

func _ready():
	$Temporizador.visible = false
	$"Notificação".visible = false


func _on_Fogo_body_entered(body):
# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1
func _on_Fogo_body_exited(body):
# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	if notificacao == 1:
		$Temporizador.visible = true
		$Temporizador.play("Tempo_fogao")
	else:
		$Temporizador.visible = false
	#Botão de interação com o objeto
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_massa == 1:
		Global.hide_slot = 0
		Global.pegou_massa = 0
		Global.tem_massa = 0
		$Timer.start()
		notificacao = 1
	#Botão de interação com o objeto
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_bolo_assado == 1 and notificacao == 2: #and Global.tem_massa == 0 and Global.pegou_massa == 0:
		Global.hide_slot = 1
		Global.pegou_bolo_assado = 1
		$"Notificação".visible = false
#Condições para alteração dop estado do fogão
	if estado_fog == 0:
		$anim_fog.play("fog_normal")
	elif estado_fog == 1:
		$anim_fog.play("fog_brilho")
	elif estado_fog == 2:
		$anim_fog.play("fog_abrindo")
	elif estado_fog == 3:
		$anim_fog.play("fog_fechando")
	
#Botão de interação com o objeto
	if in_area == 0 and Global.pegou_massa == 1:
		estado_fog = 1
	elif in_area == 1 and Global.pegou_massa == 1 or in_area == 1 and notificacao == 2:
		estado_fog = 2
	elif in_area == 0 and Global.tem_massa == 0 or in_area == 0 and Global.pegou_bolo_assado == 1:
		estado_fog = 3
	else:
		estado_fog = 0



func _on_Timer_timeout():
	notificacao = 2
	$"Notificação".visible = true

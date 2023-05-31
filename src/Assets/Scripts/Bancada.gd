# Script para interação com o micro-ondas
extends Area2D

# Variável que diz se o jogador está na área
var in_area = 0
var tabuleiro = 1
#Variável de estado da bancada
var estado_ban = 0

func _ready():
	# Deixa visivel e invisivel algumas texture
	$tabuleiro_vazio. visible = true
	$bolo.visible = false
	$bolo_pronto.visible = false

func _on_Bancada_body_entered(body):
# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1
# Condicional que diz que o NPC entrou da área
	if body.name == "NPC_Otto":
		in_area = 2

func _on_Bancada_body_exited(body):
# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	# Botão para pegar o tabuleiro da bancada
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_choco == 0 and Global.tem_tabuleiro == 1:
		Global.pegou_tabuleiro = 1
		Global.tem_tabuleiro = 0
		$tabuleiro_vazio.visible = false
	# Botão para colocar o tabuleiro na bancada
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_bolo_assado == 1:
		Global.pegou_bolo_assado = 0
		Global.tem_bolo_assado = 0
		Global.colocou_bancada = 1
		$bolo.visible = true
	# Muda o bolo quando o NPC chega na area
	if in_area == 2:
		$bolo.visible = false
		$bolo_pronto.visible = true
	if Input.is_action_just_pressed("action") and in_area == 1 and $bolo_pronto.visible == true:
		Global.pegou_bolo_pronto = 1
		$bolo_pronto.visible = false

#Condições para mudança de estado da bancada
	if estado_ban == 0:
		$AnimatedSprite.play("normal")
	if estado_ban == 1:
		$AnimatedSprite.play("brilho")

#Condições para alterar o estado da batedeira
	if Global.tem_tabuleiro == 1 and Global.tem_choco == 0 and Global.pegou_choco == 0 or Global.pegou_bolo_assado == 1:
		estado_ban = 1
	else:
		estado_ban = 0

# Script para interação com o micro-ondas
extends Area2D

# Variável que diz se o jogador está na área
var in_area = 0
var tabuleiro = 1

func _ready():
	$TabuleiroVazio. visible = true
	$Bolo.visible = false
	$BoloPronto.visible = false

func _on_Bancada_body_entered(body):
# Condicional que diz que o jogador entrou da área
	if body.name == "Player":
		in_area = 1

func _on_Bancada_body_exited(body):
# Condicional que diz que o jogador saiu da área
	if body.name == "Player":
		in_area = 0

func _process(delta):
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.tem_choco == 0 and Global.tem_tabuleiro == 1 and Global.hide_slot == 0:
		Global.hide_slot = 1
		Global.pegou_tabuleiro = 1
		Global.tem_tabuleiro = 0
		$TabuleiroVazio.visible = false
	if Input.is_action_just_pressed("action") and in_area == 1 and Global.pegou_bolo_assado == 1:
		Global.hide_slot = 0
		Global.pegou_bolo_assado = 0
		Global.tem_bolo_assado = 0
		$Bolo.visible = true




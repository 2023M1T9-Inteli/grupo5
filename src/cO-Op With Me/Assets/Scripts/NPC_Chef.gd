extends KinematicBody2D

export var speed : float = 100
var motion = Vector2.ZERO
# Variável que diz se o jogador está na área de interação com o npc
var in_area = 0

func _ready():
	# Comando para alterar a cor da label
	$Label.add_color_override("font_color", Color(0, 0, 0))

func _on_NPC_Chef2_body_entered(body):
	# Condicional que diz se o jogador entrou na área de interação com o npc
	if body.name == "Player":
		in_area = 1

func _on_NPC_Chef2_body_exited(body):
	# Condicional que diz se o jogador saiu na área de interação com o npc
	if body.name == "Player":
		in_area = 0

func _process(_delta):
	# Botão de interação com o NPC, só funciona se o jogador apertar o "E" e se ele estiver na área
	if Input.is_action_just_pressed("action") and in_area == 1:
		$Label.text = "Olá"
	
	# Se ele sair da área o Label desaparece
	if in_area == 0:
		$Label.text = ""

	#Movimentação
	#if $AnimatedSprite.position.x < 35:
	#	motion.x += speed
	#move_and_slide(motion * speed)

extends TextureRect

func _ready():
	$Ovo.visible = false
	$Leite.visible = false
	$Trigo.visible = false
	$Chocolate.visible = false
	$Massa.visible = false
	$Tabuleiro.visible = false
	$Bolo_assado.visible = false
	
func _process(delta):
	if Global.pegou_ovo == 1:
		$Ovo.texture = load("res://Assets/Art/Interface/ovo..png")
		$Ovo.visible = true
	elif Global.pegou_ovo == 0:
		$Ovo.visible = false
	if Global.pegou_leite == 1:
		$Leite.texture = load("res://Assets/Art/Interface/milk.png")
		$Leite.visible = true
	elif Global.pegou_leite == 0:
		$Leite.visible = false
	if Global.pegou_trigo == 1:
		$Trigo.texture = load("res://Assets/Art/Interface/trigo.png")
		$Trigo.visible = true
	elif Global.pegou_trigo == 0:
		$Trigo.visible = false
	if Global.pegou_choco == 1:
		$Chocolate.texture = load("res://Assets/Art/Interface/chocolate.png")
		$Chocolate.visible = true
	elif Global.pegou_choco == 0:
		$Chocolate.visible = false
	if Global.pegou_massa == 1:
		$Massa.texture = load("res://Assets/Art/Interface/Massa.png")
		$Massa.visible = true
	elif Global.pegou_massa == 0:
		$Massa.visible = false
	if Global.pegou_tabuleiro == 1:
		$Tabuleiro.texture = load("res://Assets/Art/Interface/Tabuleiro vazio.png")
		$Tabuleiro.visible = true
	elif Global.pegou_tabuleiro == 0:
		$Tabuleiro.visible = false
	if Global.pegou_bolo_assado == 1:
		$Bolo_assado.texture = load("res://Assets/Art/Interface/Bolo assado.png")
		$Bolo_assado.visible = true
	elif Global.pegou_bolo_assado == 0:
		$Bolo_assado.visible = false



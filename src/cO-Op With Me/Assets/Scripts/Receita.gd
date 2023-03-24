extends TextureRect

func _ready():
	visible = false

func _process(_delta):
	if Global.andar == 0:
		visible = false
	else:
		visible = true
	if Global.tem_ovo == 1:
		$Ingredientes.visible = true
		$"Modo de preparo".visible = false
	if Global.pegou_choco == 0 and Global.tem_choco == 0:
		$Ingredientes.visible = false
		$"Modo de preparo".visible = true

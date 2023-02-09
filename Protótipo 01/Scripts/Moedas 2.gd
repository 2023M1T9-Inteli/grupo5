extends Control
# codigo do hud da contagem das frutas

func _process(delta):
	# adiciona o valor atual da variavel global de contagem de moedas
	$CanvasLayer/Label.text = "Frutas: " + str(GlobalVar.moedas2)
	# altera a cor label
	$CanvasLayer/Label.add_color_override("font_color", Color(0,0,0))

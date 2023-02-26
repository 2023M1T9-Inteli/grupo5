# Script do item Farinha
extends TextureRect

func _process(_delta):
	# Condional para aparecer ou desaparecer na hotbar do jagador.
	if Global.hide_slot2 == 1:
		$Texture.visible = true
	else:
		$Texture.visible = false

extends TextureRect

func _process(_delta):
	if Global.hide_slot1 == 1:
		$Texture.visible = true
	else:
		$Texture.visible = false

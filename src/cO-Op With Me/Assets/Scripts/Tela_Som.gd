extends Control


func _ready():
	pass # Replace with function body.


func _on_Slider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)

func _on_TextureButton2_pressed():
	get_tree().change_scene("res://Assets/Scenes/Tela_Butões.tscn")

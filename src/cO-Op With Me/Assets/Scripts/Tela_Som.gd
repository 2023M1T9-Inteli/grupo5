extends Control
# Script da tela de configuração do som
var master_bus = AudioServer.get_bus_index("Master")

func _ready():
	pass # Replace with function body.

# função para alterar o volume do jogo
func _on_Slider_value_changed(value):
	AudioServer.set_bus_volume_db(master_bus, value)
	# zero o volume do jogo se o slider chegar ao fim
	if value == -30:
		AudioServer.set_bus_mute(master_bus, true)
	else:
		AudioServer.set_bus_mute(master_bus, false)
func _on_back_pressed():
	get_tree().change_scene("res://Assets/Scenes/Tela_Butões.tscn")

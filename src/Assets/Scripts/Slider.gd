extends HSlider

# Altera o volume do jogo
func set_bus_volume(bus_index: int, value: float):
	AudioServer.set_bus_volume_db(bus_index, linear2db(value))
	AudioServer.set_bus_mute(bus_index, value < 0.01)


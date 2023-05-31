extends Node2D

# Trilha sonora da fase
var music = preload("res://Assets/Art/Audio/Devonshire Waltz Allegretto - Office.mp3")

func _ready():
	# Reproduzir a trilha sonora da fase
	Audio.play(music)

func _process(delta):
	# Mudar o valor do volume
	Audio.change_volume(Global.volume)

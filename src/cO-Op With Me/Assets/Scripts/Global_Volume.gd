extends Node2D

# Função para tocar as trilhas sonoras de forma global no menu e também não haver conflito entre os audios (um ficar sobreposto no outro)
func play(music): 
	if $Audio.stream != music:
		$Audio.stop()
		$Audio.stream = music
		$Audio.play()

# Função para mudar o valor do volume 
func change_volume(volume):
	$Audio.volume_db = volume

func stop_music():
	$Audio.stop()

extends Area2D
# codigo do coin 2

func _on_Coin_2_body_entered(body):
	# se o jogador 2 colidir com a moeda ela some e adiciona mais um para a contagem de moeda
	if body.name == "Player 2":
		GlobalVar.moedas2 += 1
		queue_free()

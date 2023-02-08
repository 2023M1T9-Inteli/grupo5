extends Area2D
# codigo do coin 1

func _on_Coin_1_body_entered(body):
	# se o jogador 2 colidir com a moeda ela some e adiciona mais um para a contagem de moeda
	if body.name == "Player 1":
		GlobalVar.moedas1 += 1
		queue_free()

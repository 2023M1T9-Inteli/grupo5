extends Area2D

func _on_Coin_2_body_entered(body):
	if body.name == "Player 2":
		#GlobalVar.moedas += 1
		queue_free()

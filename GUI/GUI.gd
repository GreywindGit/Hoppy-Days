extends CanvasLayer

func update_gui(lives_left, coins_collected):
	$Control/TextureRect/HBoxContainer/LifeCount.text = str(lives_left)
	$Control/TextureRect/HBoxContainer/CoinCount.text = str(coins_collected)
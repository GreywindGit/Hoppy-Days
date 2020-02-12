extends Node2D

var lives = 3
var coins = 0
const COINS_FOR_NEW_LIFE = 10

func _ready():
	add_to_group("Gamestate")
	update_GUI()
	

func update_GUI():
	get_tree().call_group("GUI", "update_gui", lives, coins)
	

func hurt():
	lives -= 1
	$Player.hurt()
	update_GUI()
	if lives < 0:
		end_game()


func coin_up():
	coins += 1
	update_GUI()
	var multiple_of_target_coins = (coins % COINS_FOR_NEW_LIFE)
	if multiple_of_target_coins == 0:
		life_up()
	

func life_up():
	lives += 1
	update_GUI()


func end_game():
	get_tree().change_scene("res://Levels/GameOver.tscn")
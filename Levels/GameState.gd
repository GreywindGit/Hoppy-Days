extends Node2D

var lives = 5

func _ready():
	add_to_group("Gamestate")
	update_GUI()
	

func update_GUI():
	get_tree().call_group("GUI", "update_lives", lives)
	

func hurt():
	lives -= 1
	$Player.hurt()
	update_GUI()
	if lives < 0:
		end_game()


func end_game():
	get_tree().change_scene("res://Levels/GameOver.tscn")
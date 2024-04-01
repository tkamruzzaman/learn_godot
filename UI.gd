extends CanvasLayer

@onready var game_over = $"../UI/GameOver"
@onready var game_over_text = $"../UI/GameOver/Panel/GameOverText"

func _ready():
	game_over.set_visible(false)
	
func showGameOver(success):
	var _str = ""
	if success == true:
		_str = "Congratulations!"
	else:
		_str = "Try Again!"
	game_over_text.text = _str
	game_over.set_visible(true)
	
func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://main.tscn")

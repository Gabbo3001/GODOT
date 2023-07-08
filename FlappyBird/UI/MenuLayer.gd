extends CanvasLayer

signal start_game

onready var start_message = $startMenu/startMessage
onready var tween = $Tween
onready var score_label = $gameOverMenu/VBoxContainer/scoreLabel
onready var high_score_label = $gameOverMenu/VBoxContainer/highScoreLabel
onready var game_over_menu = $gameOverMenu

var game_started = false

func _input(event):
	if event.is_action_pressed("flap") && !game_started:
		emit_signal("start_game")
		tween.interpolate_property(start_message, "modulate:a", 1, 0, 0.5)
		tween.start()
		game_started = true

func _init_game_over_menu(score):
	score_label.text = "SCORE: " + str(score)
	game_over_menu.visible = true
	
func _on_restartButton_pressed():
	get_tree().reload_current_scene()

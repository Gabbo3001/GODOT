extends RigidBody2D
var game_started : bool = false
func _input(event):
	if game_started == false:
		if event.is_action_pressed("iniciar"):
			linear_velocity = Vector2(40,-500)
			game_started = true

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	for body in get_colliding_bodies():
		if body.is_in_group("bloques"):
			body.queue_free()
			if body.get_parent().get_child_count() == 1:
				print("GANA")
				queue_free()
		elif body.get_name() == "borde_bot":
			print("PIERDE")
			queue_free()
			var replay_scene = load("res://Titulos/Titulo/REPLAY.tscn")
			get_parent().add_child(replay_scene.instance())
			get_tree().paused = true

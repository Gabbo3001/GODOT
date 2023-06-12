extends KinematicBody2D
var speed = 45
var aceleracion =20
var friccion = 40

func _process(delta):
	var input_dir = Vector2()
	input_dir.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_dir.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	var velocity = input_dir.normalized(input_dir * speed, )
	velocity = velocity.move_toward()

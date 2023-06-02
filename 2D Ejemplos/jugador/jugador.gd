extends KinematicBody2D

const RIGHT : int = 1
const LEFT : int = -1

export var speed : int = 5

#ejemplo para ejecutar 1 sola vez
# warning-ignore:unused_argument
func _physics_process(delta):
	if Input.is_action_pressed("mover_derecha"):
		position.x = position.x + speed
	if Input.is_action_pressed("mover_izquierda"):
		position.x = position.x - speed



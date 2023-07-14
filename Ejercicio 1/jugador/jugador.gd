extends KinematicBody2D

const RIGHT : int = 1
const LEFT : int = -1

export var speed : int = 5

#ejemplo para ejecutar 1 sola vez
# warning-ignore:unused_argument
func _physics_process(delta):
	if Input.is_action_pressed("mover_derecha"):
		var mouvement : Vector2 = Vector2(speed,0)
		move_and_collide(mouvement)
	if Input.is_action_pressed("mover_izquierda"):
		var mouvement : Vector2 = Vector2(-speed,0)
		move_and_collide(mouvement)

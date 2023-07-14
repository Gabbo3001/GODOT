extends KinematicBody2D

var metro:int = 25
var rapidez:float = 8 * metro
var direccion: Vector2
var velocidad: Vector2


func _ready():
	pass # Replace with function body.

func _input(event):
	cambiar_direccion()

func _physics_process(delta):
	movimiento()

func cambiar_direccion():
	direccion.x = Input.get_axis("ui_left", "ui_right")
	direccion.y = Input.get_axis("ui_up", "ui_down")
	direccion = direccion.normalized()
	
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite.play("derecha")
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite.play("izquierda")
	elif Input.is_action_pressed("ui_up"):
		$AnimatedSprite.play("arriba")
	elif Input.is_action_pressed("ui_down"):
		$AnimatedSprite.play("abajo")
	else:
		$AnimatedSprite.play("quieto")


func movimiento():
	velocidad = direccion * rapidez
	velocidad = move_and_slide(velocidad)

func _on_Enemigo_body_entered(body):
	if body.is_in_group("Enemigo"):
		print("Perdió")

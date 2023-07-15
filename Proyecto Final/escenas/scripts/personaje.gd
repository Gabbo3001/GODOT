extends KinematicBody2D

var metro:int = 25
var rapidez:float = 8 * metro
var direccion: Vector2
var velocidad: Vector2
onready var recogerMoneda = $recogerMoneda
onready var perder = $perder
onready var pasos = $pasos
onready var ganar = $ganar


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
#		pasos.play()
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite.play("izquierda")
#		pasos.play()
	elif Input.is_action_pressed("ui_up"):
		$AnimatedSprite.play("arriba")
#		pasos.play()
	elif Input.is_action_pressed("ui_down"):
		$AnimatedSprite.play("abajo")
#		pasos.play()
	else:
		$AnimatedSprite.play("quieto")


func movimiento():
	velocidad = direccion * rapidez
	velocidad = move_and_slide(velocidad)

func _on_Enemigo_body_entered(body):
	if body.is_in_group("Enemigo"):
		print("Perdió")

extends KinematicBody2D

var tiempo_transcurrido = 0
var direccion = Vector2.ZERO # Dirección inicial del movimiento (inicialmente establecida en (0, 0))
var speed = 100 # Velocidad de movimiento del personaje (ajusta este valor según tus necesidades)
var animated_sprite # Variable para almacenar la referencia al nodo AnimatedSprite

func _ready():
	animated_sprite = $AnimatedSprite # Asigna la referencia al nodo AnimatedSprite en el _ready()
	direccion = Vector2(rand_range(-1, 1), 0).normalized() # Establece una dirección inicial aleatoria

func _physics_process(delta):
	tiempo_transcurrido += delta

	# Cambiar de dirección cada 2 segundos
	if tiempo_transcurrido >= 2.0:
		tiempo_transcurrido = 0
		direccion = -direccion

	# Movimiento horizontal
	move_and_slide(Vector2(direccion.x * speed, 0))

	# Verifica si el nodo AnimatedSprite existe antes de llamar a la función play()
	if animated_sprite != null:
		if direccion.x < 0:
			animated_sprite.animation = "izquierda"
		else:
			animated_sprite.animation = "derecha"
	else:
		print("Nodo AnimatedSprite no encontrado")


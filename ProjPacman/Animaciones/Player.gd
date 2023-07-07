extends Sprite

export var animationSpeed: float = 1.0
export var animationName: String = ""

var animationPlayer: AnimationPlayer

func _ready():
	animationPlayer = $AnimationPlayer

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		animationPlayer.play(animationName, animationSpeed)

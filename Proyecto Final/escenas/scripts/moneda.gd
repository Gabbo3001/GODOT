extends Area2D
onready var recogerMoneda = $recogerMoneda
func _ready():
	pass # Replace with function body.


func _on_moneda_body_entered(body):
	print(typeof(body))
	if not body.is_in_group("enemigos"):
		recogerMoneda.play()
		queue_free()
		print("pickup")

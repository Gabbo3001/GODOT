extends Area2D

onready var ganar = $ganar

func _ready():
	pass # Replace with function body.


func _on_estrella_body_entered(body):
	queue_free()
	print ("Ganaste")
	
	

extends Area2D


func _on_moneda_body_entered(body):
	$pickupSound.playing = true
	queue_free()
	
	


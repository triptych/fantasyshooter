extends Area2D

export(int) var SPEED = 100

func _ready():
	add_to_group("enemy")
	pass
	
func _process(delta):
	position.y += SPEED * delta	

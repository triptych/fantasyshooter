extends Area2D

export(int) var SPEED = 200
 

func _ready():
	pass

func _process(delta):
	position.y -= SPEED * delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

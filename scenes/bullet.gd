extends Area2D

export(int) var SPEED = 200
 

func _ready():
	add_to_group("bullet")
	pass

func _process(delta):
	position.y -= SPEED * delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Area2D_area_entered(area):
	if area.is_in_group("enemy"):
		area.queue_free()
		queue_free()
	pass # Replace with function body.

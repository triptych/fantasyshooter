extends Node2D

func _ready():
	pass
	
func _process(delta):
	# var speed = 200
	#$TileMap.motion_offset.x += speed * delta	
	$animationplayer.play("Move Background")

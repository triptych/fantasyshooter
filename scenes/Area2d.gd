extends Area2D

#onready var Bullet = find_node("bullet")
const Bullet = preload("res://scenes/bullet.tscn")

func _ready():
	add_to_group("player")

func _process(delta):
	var motionx = (get_viewport().get_mouse_position().x - position.x) * 0.2
	var motiony = (get_viewport().get_mouse_position().y - position.y) * 0.2
	translate(Vector2(motionx,motiony))
	
	var view_size = get_viewport_rect().size
	
	var pos = position
	position.x = clamp(position.x, 0 + 16, view_size.x -16)	
	position.y = clamp(position.y, 0 +16, view_size.y - 16)
	if Input.is_action_just_pressed("ui_accept"):
		fire_bullet()
		

func fire_bullet():
	var bullet = Bullet.instance()
	var main = get_tree().current_scene
	main.add_child(bullet)
	bullet.global_position = global_position

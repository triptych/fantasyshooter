extends Node

const Enemy = preload("res://scenes/enemy.tscn")
var View_Size

func _ready():
	View_Size = get_tree().get_root().get_visible_rect().size
	add_to_group("enemy")
	randomize()
	pass


func spawnEnemy():
	var enemy = Enemy.instance()
	var main = get_tree().current_scene
	var pos = Vector2()
	
	pos.y = 0 + 16
	pos.x = rand_range(0 + 16, View_Size.x - 16)
	main.add_child(enemy)
	enemy.position = pos
	pass

func _on_Timer_timeout():
	print("timer timeout!")
	spawnEnemy()
	pass # Replace with function body.


func _on_player_area_entered(area):
	print("area entered player!!")
	print(area)
	if area.is_in_group("enemy"):
		print("boom")
		#queue_free()
		$player.queue_free()
		area.queue_free()
	pass # Replace with function body.

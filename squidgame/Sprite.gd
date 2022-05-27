extends Sprite


func shoot(player):
	look_at(player.global_position)
	var a = preload("res://bullet.tscn").instance()
	a.global_position = $Position2D.global_position
	a.rotation = rotation
	a.apply_impulse(Vector2(), Vector2(1200,0).rotated(rotation))
	get_tree().root.add_child(a)



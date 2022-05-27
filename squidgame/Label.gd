extends Label

var secs = 30

func _physics_process(delta):
	secs -= delta
	text = str(floor(secs))
	if floor(secs) <= 0:
		get_parent().shoot_player()
		set_physics_process(false)
	
	

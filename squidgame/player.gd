extends KinematicBody2D

var m = Vector2()
var speed = 50


func _physics_process(delta):
	if m.y <= 0:
		m.y += 50
	m.x = (Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"))*speed
	move_and_slide(m)
	
	

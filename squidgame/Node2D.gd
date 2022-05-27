extends Node2D



var turn = false

func _on_Timer_timeout():
	if !turn:
		$ColorRect.color = Color.red
	else:
		$ColorRect.color = Color.green
	turn = !turn

func _physics_process(delta):
	if turn and $player.m.x != 0:
		shoot_player()
		set_physics_process(false)

func shoot_player():
	$Position2D.shoot($player)
	
func _unhandled_key_input(event):
	if event.is_action_released("ui_select"):
		get_tree().reload_current_scene()

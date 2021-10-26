extends "res://entities/AbstractState.gd"

func enter():
	parent._play_animation("death")
	yield(get_tree().create_timer(1.5), "timeout")
	parent._remove()


func update(delta):
	parent._handle_deacceleration()
	parent._apply_movement()

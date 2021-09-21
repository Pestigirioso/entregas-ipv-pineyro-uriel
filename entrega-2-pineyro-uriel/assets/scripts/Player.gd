extends Sprite

# Declare member variables here. Examples:
export (float) var speed:float = 50

onready var cannon = $Cannon

var projectile_container: Node

func set_projectile_container(container: Node):
	cannon.projectile_container = container
	projectile_container = container

func _physics_process(delta):
	var direction = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	var mouse_position: Vector2 = get_global_mouse_position()
	var origen: Vector2 = get_global_position()
	var direction_vector: Vector2 = mouse_position - origen
	cannon.look_at(mouse_position)

	if(Input.is_action_just_pressed("fire")):
		cannon.fire()

	position.x += direction * speed * delta

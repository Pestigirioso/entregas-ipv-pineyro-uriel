extends Node

export (int) var enemy_quantity: int = 3

func _ready():
	$Player.set_projectile_container(self)
	$Turret.set_values($Player, self)

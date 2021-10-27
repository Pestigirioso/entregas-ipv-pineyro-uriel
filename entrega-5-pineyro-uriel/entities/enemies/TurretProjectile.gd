extends "res://entities/Projectile.gd"

onready var anim = $RotationAnimation

func _animate_projectile():
	anim.play("rotate")

func _ready():
	_animate_projectile()

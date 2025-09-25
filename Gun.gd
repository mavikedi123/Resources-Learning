extends Node2D

@export var bullet: PackedScene = load("res://bullet.tscn")
@onready var muzzle = $Muzzle
func _ready() -> void:
	pass

func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if(Input.is_action_just_pressed("shoot")):
		shoot()
		



func shoot()->void:
	var b = bullet.instantiate()
	owner.add_child(b)
	b.transform = muzzle.global_transform
	
	
	
	
	

extends Node2D

@export var bullet = load("res://bullet.tscn")
@onready var muzzle = $Muzzle
@export var comps : comp_bullets
@export var b_data:Test_Bullet
var i = 0
func _ready() -> void:
	b_data = comps.BulletTypes[0]
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if(Input.is_action_just_pressed("interact") and i<comps.BulletTypes.size()):
		b_data = comps.BulletTypes[i]
		i += 1
	elif(i>=comps.BulletTypes.size()):
			i=0
	if(Input.is_action_just_pressed("shoot")):
		shoot()



func shoot()->void:
	var b = bullet.instantiate()
	b.data = b_data
	owner.add_child(b)
	b.transform = muzzle.global_transform
	
	
	
	
	

extends Node2D
@export var bullet_data:Test_Bullet
var sprite:Sprite2D
func _ready() -> void:
	sprite = find_child("Sprite2D")
	sprite.texture = bullet_data.texture
func _process(delta: float) -> void:
	position += Vector2(bullet_data.speed*delta,0).rotated(rotation)

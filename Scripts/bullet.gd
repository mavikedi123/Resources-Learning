extends Node2D
@export var data:Test_Bullet
var sprite:Sprite2D
func _ready() -> void:
	sprite = find_child("Sprite2D")
	sprite.texture = data.texture
func _process(delta: float) -> void:
	position += Vector2(data.speed*delta,0).rotated(rotation)

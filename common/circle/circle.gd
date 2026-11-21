@tool
class_name Circle
extends Node2D

@export var radius: float = 16
@export var color: Color = Color.WHITE
@export var filled: bool = true
@export var anti_aliased: bool = true


func _draw() -> void:
	draw_circle(Vector2(0, 0), radius, color, filled, -1.0, anti_aliased)


func _process(_delta: float) -> void:
	if Engine.is_editor_hint():
		queue_redraw()

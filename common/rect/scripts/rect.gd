@tool
extends Node2D

@export var width: float = 16
@export var height: float = 16
@export var centered: bool = true
@export var color: Color = Color.WHITE
@export var filled: bool = true
@export var anti_aliased: bool = true


func _draw() -> void:
	var dest := Rect2(0, 0, width, height)

	if centered:
		dest.position.x -= width / 2
		dest.position.y -= height / 2

	draw_rect(dest, color, filled, -1.0, anti_aliased)


func _process(_delta: float) -> void:
	if Engine.is_editor_hint():
		queue_redraw()

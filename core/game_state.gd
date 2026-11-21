class_name GameState
extends Node

var points: int = 0
var boost_active: bool = false


func add_points() -> void:
	points += 1

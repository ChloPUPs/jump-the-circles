class_name Level
extends Node2D


func get_player_start_pos() -> Vector2:
	var player_start_marker: Marker2D = %PlayerStart
	return player_start_marker.global_position

class_name MainManager
extends Node2D

var level: Level
var player: Player


func _ready() -> void:
	_load_player()
	_load_level()

	player.position = level.get_player_start_pos()


func _load_level() -> void:
	var level_scene: PackedScene = load("uid://ccqyj882bjnyj")
	level = level_scene.instantiate()
	add_child(level)


func _load_player() -> void:
	var player_scene: PackedScene = load("uid://bi2xkly2blyut")
	player = player_scene.instantiate()
	add_child(player)

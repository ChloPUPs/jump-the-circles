class_name MainManager
extends Node2D

var level: Level
var player: Player
var hud: Control

@onready var game_state: GameState = %GameState

func _ready() -> void:
	_load_gameplay()

	player.position = level.get_player_start_pos()

	hud.get_node("%PointDisplay").update(game_state.points)


func _on_player_jumped_over_obstacle() -> void:
	game_state.add_points()
	hud.get_node("%PointDisplay").update(game_state.points)


func _load_gameplay() -> void:
	_load_player()
	_load_level()

	hud = load("uid://dru0fot0bxgqn").instantiate()
	$HUDLayer.add_child(hud)


func _load_level() -> void:
	var level_scene: PackedScene = load("uid://ccqyj882bjnyj")
	level = level_scene.instantiate()
	add_child(level)


func _load_player() -> void:
	var player_scene: PackedScene = load("uid://bi2xkly2blyut")
	player = player_scene.instantiate()

	player.jumped_over_obstacle.connect(_on_player_jumped_over_obstacle)

	add_child(player)

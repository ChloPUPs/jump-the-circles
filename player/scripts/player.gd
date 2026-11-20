class_name Player
extends CharacterBody2D

@export var speed: float = 300
@export var jump_velocity: float = -500
@export var gravity_multiplier: float = 1


func _physics_process(delta: float) -> void:
	var direction_x: float = Input.get_axis("left", "right")
	velocity.x = direction_x * speed

	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			velocity.y = jump_velocity
	else:
		velocity += get_gravity() * gravity_multiplier * delta

	move_and_slide()

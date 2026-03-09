extends Area2D

class_name Dice

const SPEED: float = 90.0
const ROTATION_SPEED: float = 5.0

@onready var sprite_2d: Sprite2D = $Sprite2D

var rotationDirection: float = 1 if (randf() < 0.5) else -1

signal game_over

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	position.y += delta * SPEED
	sprite_2d.rotate(rotationDirection * delta * ROTATION_SPEED)
	check_game_over()

func check_game_over() -> void:
	if get_viewport_rect().end.y < position.y:
		print("Off the screen")
		#set_physics_process(false)
		game_over.emit()
		queue_free()

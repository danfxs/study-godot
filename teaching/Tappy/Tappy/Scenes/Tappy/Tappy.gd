extends CharacterBody2D
class_name Tappy

const JUMP_POWER: float = -350.
const TAPPY_SPEED: float = 0.

var _gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity")
var _jumped: bool = false
#signal plane_died
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("power"):
		_jumped = true

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	velocity.x = TAPPY_SPEED
	velocity.y += _gravity * delta
	
	if _jumped:
		velocity.y = JUMP_POWER
		_jumped = false
		animation_player.play("thrust")
	
	move_and_slide()
	
	if is_on_floor():
		die()

func die() -> void:
	#animated_sprite_2d.stop()
	#set_physics_process(false)
	#plane_died.emit()
	SignalHub.emit_on_place_died()
	get_tree().paused = true

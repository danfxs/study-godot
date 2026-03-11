extends Node2D
class_name Fox

@export var speed: float = 250.
@onready var sprite: Sprite2D = $sprite
@onready var sounds: AudioStreamPlayer2D = $Sounds

signal point_scored

func _physics_process(delta: float) -> void:
	var move: float = Input.get_axis("ui_left", "ui_right")
	#if Input.is_action_pressed("ui_left"):
	#	move -= speed
	#if Input.is_action_pressed("ui_right"):
	#	move += speed
	if !is_zero_approx(move):
		sprite.flip_h = move > 0.
	position.x = clamp(position.x + move * delta * speed, 42, 1096)

func _on_area_entered(area: Area2D) -> void:
	if area is Dice:
		sounds.play()
		area.queue_free()
		point_scored.emit()

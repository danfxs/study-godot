extends Node2D
class_name Pipes

const BASE_SPEED: float = 120.
signal score_point

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	position.x -= BASE_SPEED * delta

func _on_screen_notifier_screen_exited() -> void:
	queue_free()

func _on_life_timer_timeout() -> void:
	queue_free()

func _on_body_entered(body: Node2D) -> void:
	if body is Tappy:
		body.die()

func _on_laser_body_exited(body: Node2D) -> void:
	if body is Tappy:
		score_point.emit()

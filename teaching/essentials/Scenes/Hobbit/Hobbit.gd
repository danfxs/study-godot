class_name Hobbit

extends Node2D

signal kill_wizard

func _init() -> void:
	print("_init: %s %s" % [get_instance_id(), name])

func _enter_tree() -> void:
	print("_enter_tree: %s %s" % [get_instance_id(), name])

func _exit_tree() -> void:
	print("_exit_tree: %s %s" % [get_instance_id(), name])

func _ready() -> void:
	print("_ready: %s %s" % [get_instance_id(), name])

func _process(delta: float) -> void:
	rotate(3.0 * delta)

func _on_hide_timer_timeout() -> void:
	hide()

func hit_by_spell() -> void:
	scale = Vector2(0.25, 0.25)
	set_process(false)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("hit_wizard"):
		kill_wizard.emit()

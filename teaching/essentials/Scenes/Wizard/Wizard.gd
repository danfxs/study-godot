class_name Wizard

extends Node2D

@onready var reveal_timer: Timer = $RevealTimer
@onready var sprite_2d: Sprite2D = $Sprite2D

signal cast_spell

func _ready() -> void:
	hide()

func _process(delta: float) -> void:
	#if reveal_timer.is_stopped(): show()
	pass

func _on_reveal_timer_timeout() -> void:
	show()


func _on_spell_timer_timeout() -> void:
	cast_spell.emit()


func kill_wizard() -> void:
	sprite_2d.scale = Vector2(0.5, 0.5)

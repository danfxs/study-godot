extends Control
class_name GameUi

@onready var press_space_label: Label = $MarginContainer/PressSpaceLabel
@onready var game_over_label: Label = $MarginContainer/GameOverLabel
@onready var change_label_timer: Timer = $ChangeLabelTimer
@onready var game_over_sound: AudioStreamPlayer = $GameOverSound
@onready var game_points: Label = $MarginContainer/ScoreLabel 

var can_restart: bool = false
var _points: int = 0

func _ready() -> void:
	SignalHub.on_plane_died.connect(on_plane_died)
	SignalHub.on_points_scored.connect(score_points)

func score_points() -> void:
	_points += 1
	game_points.text = '%03d' % _points

func _unhandled_input(event: InputEvent) -> void:
	if can_restart and event.is_action_pressed("power"):
		GameManager.load_main_scene()

func on_plane_died() -> void:
	game_over_label.show()
	game_over_sound.play()
	change_label_timer.start()

func _on_change_label_timer_timeout() -> void:
	game_over_label.hide()
	press_space_label.show()
	can_restart = true

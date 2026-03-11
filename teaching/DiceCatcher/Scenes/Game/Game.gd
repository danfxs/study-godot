class_name Game

extends Node2D

const DICE = preload("uid://c6wsbyjga68up")
const MARGIN: float = 80.
const STOPPABLE_GROUP: String = "stoppable"

@onready var spawn_timer: Timer = $Node/SpawnTimer
@onready var score_label: Label = $ScoreLabel
@onready var music: AudioStreamPlayer = $Music
@onready var gameover_sound: AudioStreamPlayer = $GameoverSound
@onready var node: Node = $Node

var _points: int = 0

func _ready() -> void:
	spawn_dice()
	spawn_timer.start()
	update_score_label()
	get_tree().paused = false

func spawn_dice() -> void:
	var new_dice: Dice = DICE.instantiate()
	var max_x: float = get_viewport_rect().end.x
	var min_x: float = get_viewport_rect().position.x
	var random_x: float = randf_range(min_x + MARGIN, max_x - MARGIN)
	new_dice.position = Vector2(random_x, -80.)
	#new_dice.connect("game_over", received_game_over_signal)
	new_dice.game_over.connect(received_game_over_signal)
	new_dice.add_to_group(STOPPABLE_GROUP)
	node.add_child(new_dice)

func pause_all() -> void:
	spawn_timer.stop()
	var items: Array[Node] = get_tree().get_nodes_in_group(STOPPABLE_GROUP)
	for node in items:
		node.set_physics_process(false)
		node.queue_free()

func received_game_over_signal() -> void:
	#pause_all()
	music.stop()
	gameover_sound.play()
	get_tree().paused = true

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("restart"):
		get_tree().reload_current_scene()

func update_score_label() -> void:
	score_label.text = "%04d" % _points

func _on_fox_point_scored() -> void:
	_points += 1
	update_score_label()

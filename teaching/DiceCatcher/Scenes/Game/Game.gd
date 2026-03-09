class_name Game

extends Node2D

const DICE = preload("uid://c6wsbyjga68up")
const MARGIN: float = 80.
const STOPPABLE_GROUP: String = "stoppable"

@onready var timer: Timer = $SpawnTimer

func _ready() -> void:
	spawn_dice()
	timer.start()
	pass

func _process(delta: float) -> void:
	pass

func spawn_dice() -> void:
	var new_dice: Dice = DICE.instantiate()
	var max_x: float = get_viewport_rect().end.x
	var min_x: float = get_viewport_rect().position.x
	var random_x: float = randf_range(min_x + MARGIN, max_x - MARGIN)
	new_dice.position = Vector2(random_x, -80.)
	#new_dice.connect("game_over", received_game_over_signal)
	new_dice.game_over.connect(received_game_over_signal)
	new_dice.add_to_group(STOPPABLE_GROUP)
	add_child(new_dice)

func pause_all() -> void:
	timer.stop()
	var items: Array[Node] = get_tree().get_nodes_in_group(STOPPABLE_GROUP)
	for node in items:
		node.set_physics_process(false)
		node.queue_free()

func received_game_over_signal() -> void:
	print("Received signal that the game was over")
	pause_all()

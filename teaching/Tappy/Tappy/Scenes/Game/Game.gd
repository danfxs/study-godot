extends Node
class_name Game

@onready var spawn_timer: Timer = $SpawnTimer
@onready var pipes_holder: Node = $PipesHolder
@onready var upper_spawn: Marker2D = $UpperSpawn
@onready var lower_spawn: Marker2D = $LowerSpawn
#@onready var game_ui: GameUi = $CanvasLayer/GameUi
const PIPES = preload("res://Scenes/Pipes/Pipes.tscn")
const PIPES_POSITION_SPAWN: float = 530.
var points_scored: int = 0
var can_restart: bool = false

func _ready() -> void:
	spawn_timer.start()
	spawn_pipe()

func allow_restart() -> void:
	can_restart = true

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		GameManager.load_main_scene()

func _process(delta: float) -> void:
	pass

func spawn_pipe() -> void:
	var pipe: Pipes = PIPES.instantiate()
	pipe.position.x = PIPES_POSITION_SPAWN
	pipe.position.y = randf_range(upper_spawn.position.y, lower_spawn.position.y)
	pipes_holder.add_child(pipe)

func _on_spawn_timer_timeout() -> void:
	spawn_pipe()

#func _on_tappy_plane_died() -> void:
#	game_ui.on_plane_died()

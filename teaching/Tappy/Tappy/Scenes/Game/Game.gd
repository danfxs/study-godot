extends Node
class_name Game

@onready var spawn_timer: Timer = $SpawnTimer
@onready var pipes_holder: Node = $PipesHolder
@onready var upper_spawn: Marker2D = $UpperSpawn
@onready var lower_spawn: Marker2D = $LowerSpawn
const PIPES = preload("res://Scenes/Pipes/Pipes.tscn")
const PIPES_POSITION_SPAWN: float = 530.
var points_scored: int = 0

func _ready() -> void:
	spawn_timer.start()
	spawn_pipe()

func _process(delta: float) -> void:
	print("points_scored:", points_scored)

func score_point() -> void:
	points_scored += 1

func spawn_pipe() -> void:
	var pipe: Pipes = PIPES.instantiate()
	pipe.position.x = PIPES_POSITION_SPAWN
	pipe.position.y = randf_range(upper_spawn.position.y, lower_spawn.position.y)
	pipe.connect("score_point", score_point)
	pipes_holder.add_child(pipe)

func _on_spawn_timer_timeout() -> void:
	spawn_pipe()

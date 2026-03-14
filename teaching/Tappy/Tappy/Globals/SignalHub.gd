extends Node

signal on_plane_died
signal on_points_scored

func emit_on_place_died() -> void:
	on_plane_died.emit()

func emit_on_points_scored() -> void:
	on_points_scored.emit()

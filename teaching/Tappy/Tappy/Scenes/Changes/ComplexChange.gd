extends CanvasLayer
class_name ComplexChange

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func switch_scene() -> void:
	GameManager.change_to_next_scene()

func play_anim() -> void:
	animation_player.play("flash")

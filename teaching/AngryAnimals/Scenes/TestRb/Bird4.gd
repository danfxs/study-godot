extends RigidBody2D

@onready var label: Label = $Label

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_down"):
		freeze = !freeze

	if event.is_action_pressed("ui_up"):
		apply_central_impulse(Vector2(20,-1000))

func _process(delta: float) -> void:
	label.text = "Freeze:%s\nContactCount:%s\nSleeping:%s" % [freeze, get_contact_count(), sleeping]


func _on_sleeping_state_changed() -> void:
	print("_on_sleeping_state_changed", sleeping)


func _on_body_entered(body: Node) -> void:
	print("_on_body_entered")


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	#print("_on_input_event", event)
	if event is InputEventMouseMotion and event.button_mask == MOUSE_BUTTON_LEFT:
		position = get_global_mouse_position()

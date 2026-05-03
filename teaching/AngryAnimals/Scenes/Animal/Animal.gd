class_name Animal
extends RigidBody2D

@onready var label: Label = $Label

func _process(delta: float) -> void:
	label.text = "Freeze:%s\nContactCount:%s\nSleeping:%s" % [freeze, get_contact_count(), sleeping]

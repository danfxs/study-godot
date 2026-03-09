extends Node

@onready var hobbit: Hobbit = $Hobbit
@onready var wizard: Wizard = $Wizard

func _process(delta: float) -> void:
	pass

func _ready() -> void:
	hobbit.kill_wizard.connect(_on_hobbit_kill_wizard, CONNECT_ONE_SHOT)
	wizard.cast_spell.connect(_on_wizard_cast_spell)


func _on_wizard_cast_spell() -> void:
	hobbit.hit_by_spell()


func _on_hobbit_kill_wizard() -> void:
	print("_on_hobbit_kill_wizard")
	wizard.kill_wizard()
	#hobbit.kill_wizard.disconnect(_on_hobbit_kill_wizard)

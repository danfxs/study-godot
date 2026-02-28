@tool
extends EditorScript

func get_player_health() -> int:
	var p_health: int = roll_dice(100)
	return p_health

func attack_enemy(damage: int, enemy: String = "Troll") -> void:
	print("attack_enemy enemy:", enemy)
	print("attack_enemy damage:", roll_dice(damage))

func _run() -> void:
	print("Rolling a dice...")
	var dice = roll_dice(6)
	print(dice)
	var health: int = get_player_health()
	print(health)
	attack_enemy(20, "Orc")
	attack_enemy(10)
	pass

func roll_dice(number: int) -> int:
	var result: int = randi() % number + 1
	return result

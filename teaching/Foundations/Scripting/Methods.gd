@tool
extends EditorScript

func get_player_health() -> int:
	var p_health: int = roll_dice(60)
	return p_health

func attack_enemy(damage: int, enemy: String = "Troll") -> void:
	print("attack_enemy enemy:", enemy)
	print("attack_enemy damage:", roll_dice(damage))

func try_to_change_number(num: int) -> void:
	num += 10
	print("[try_to_change_number] Inside the method, num is ", num)

func add_item(inventory: Array) -> void:
	inventory.append("Shield")
	print("[add_item] Inside method:", inventory)

func _run() -> void:
	print("Rolling a dice...")
	var dice = roll_dice(6)
	print("dice:", dice)
	var health: int = get_player_health()
	print("health:", health)
	attack_enemy(20, "Orc")
	attack_enemy(10)
	
	var num: int = 5
	print("[try_to_change_number] Before the method:", num)
	try_to_change_number(num)
	print("[try_to_change_number] Afther the method:", num)
	
	var inventory: Array = ["Sword"]
	print("[add_item] Before the method:", inventory)
	add_item(inventory)
	print("[add_item] After the method:", inventory)
	
	health = takes_damage(health, 30)
	print("Your health is now ", health)
	
	if health == 0:
		print("Game Over!")
	else:
		print("Still alive!")

func takes_damage(current_health: int, damage: int) -> int:
	var remaining_health = current_health - damage
	return max(remaining_health, 0)

func roll_dice(number: int) -> int:
	var result: int = randi() % number + 1
	return result

class_name Character

#var _health: int = 50
#var name: String = ""
#var weapon: String = ""

static var character_count: int = 0

static func get_character_count() -> String:
	return "There are %d characters" % character_count

const MAX_SPEED: int = 500

var name: String = "NO NAME":
	get:
		print("get name")
		return name
	set(value):
		print("set name:", value)
		name = value

var weapon: String = "NO WEAPON":
	get:
		print("get weapon")
		return weapon
	set(value):
		print("set weapon:", value)
		weapon = value

var health: int:
	get:
		print("get health")
		return health
	set(value):
		print("set health:", value)
		health = clampi(value, 0, 100)

func _init(p_name: String, p_weapon: String, p_health) -> void:
	name = p_name
	weapon = p_weapon
	health = p_health
	character_count += 1

func print_health() -> void:
	print("character.health:", health)

func say_info() -> void:
	var info: String = "My character name is %s, wields a %s and I have %d of health" % [name, weapon, health]
	print(info)

func get_health() -> int:
	return health

func set_health(new_health: int) -> void:
	health = max(0, min(100, new_health))

func _to_string() -> String:
	return "%s reports for duty" % name

class_name Hero

extends Character

func say_info() -> void:
	var info: String = "The Hero is %s, wields a %s and I have %d of health" % [name, weapon, health]
	print(info)

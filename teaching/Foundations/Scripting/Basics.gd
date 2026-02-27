@tool
extends EditorScript

func _run() -> void:
	print("hello")
	var age:int = 139
	print(age)
	print(type_string(typeof(age)))
	var player_name:String = "Gimli"
	print(player_name)
	print(type_string(typeof(player_name)))
	var test:bool = true
	print(test)
	print(type_string(typeof(test)))
	var value:float = 3.1454447593
	print(value)
	print(type_string(typeof(value)))
	const MAX_HEALTH: int = 100
	

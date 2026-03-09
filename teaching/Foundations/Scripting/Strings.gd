@tool
extends EditorScript


func _run() -> void:
	var text: String = "Gandalf the Grey"
	print(text.length())
	
	var name: String = "Aragorn"
	print(name[0])
	print(name[3])
	print(name[-3])
	
	print(name.substr(3))
	
	var prophecy: String = "The heir of Isildur shall return."
	var found: int = prophecy.find("Isildur")
	print(prophecy.substr(found, 7))
	
	var spell: String = "Fireball"
	if spell.begins_with("Fire"):
		print("Fire")
	if spell.ends_with("all"):
		print("all")
	
	var age: int = 130
	var health: float = 82.536
	
	var ps: String = "Health is %f" % health
	print(ps)
	
	var psm: String = "health: %.2f age: %d" % [health, age]
	print(psm)

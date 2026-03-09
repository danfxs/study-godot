@tool
extends EditorScript

func _run() -> void:
	Character.character_count = 0
	var aragorn: Character = Character.new("Aragon", "Sword", 100)
	aragorn.print_health()
	aragorn.health = 100
	aragorn.name = "Aragorn"
	aragorn.weapon = "Sword"
	print(aragorn.get_instance_id())
	
	var frodo: Hero = Hero.new("Frodo", "String", 25)
	frodo.health = 25
	frodo.name = "Frodo"
	frodo.weapon = "Sting"
	frodo.print_health()
	print(frodo.get_instance_id())
	frodo.say_info()
	aragorn.say_info()
	
	aragorn.set_health(-30)
	aragorn.print_health()
	aragorn.set_health(130)
	aragorn.print_health()
	aragorn.set_health(30)
	aragorn.print_health()
	
	aragorn.health = -30
	print(aragorn.health)
	aragorn.health = 130
	print(aragorn.health)
	aragorn.health = 30
	print(aragorn.health)
	
	print(Character.character_count)
	print(Character.get_character_count())
	print(Character.MAX_SPEED)
	
	if frodo is Hero: print("Frodo is a Hero")
	if frodo is Character: print("Frodo is a Character")
	if aragorn is Hero: print("Aragorn is a Hero")
	if aragorn is Character: print("Aragorn is a Character")
	
	print(aragorn)
	print(frodo)

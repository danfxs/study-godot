@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var ring_bearer: String = "Boromir" 
	if ring_bearer == "Frodo":
		print("Take it to the fire from whence it came!")
	elif ring_bearer == "Boromir": 
		print("You cannot wield it!")
	else:
		print("Gollum has the ring")
		
		
	var arrows: int = 10
	while arrows > 0:
		arrows -= 1
		if arrows == 7:
			continue
		if arrows == 4:
			break
		print(arrows)
		
	var fellowship: Array[String] = [
		"Frodo", "Sam", "Aragorn", "Gimli", "Legolas", 
		"Gandalf", "Boromir", "Merry", "Pippin"
	]
	
	for member in fellowship:
		if member == "Gimli":
			continue
		elif member == "Boromir":
			break
		print(member)
	
	for orc in range(21,10,-3):
		print(orc)
	
	

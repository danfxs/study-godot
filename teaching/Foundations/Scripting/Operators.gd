@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var orcs: int = 200
	var elves: int = 150
	var total_warriors: int = orcs + elves
	var orc_casualties: int = orcs - 50
	var total_arrows_needed: int = elves * 2
	var elves_lost: float = elves / 4.0
	
	print("Elves lost:", elves_lost)
	print(type_string(typeof(elves_lost)))
	
	print("Total warriors:", total_warriors)
	print("Orcs left after battle:", orc_casualties)
	print("Total arrows needed:", total_arrows_needed)
	
	var rings: int = 9
	var fellowship_size: int = 5
	var leftover_rings: int = rings % fellowship_size
	print("Leftover rings:", leftover_rings)	
	
	var is_fellowship_full: bool = fellowship_size == 9
	print("Is fellowship full (==)?", is_fellowship_full)
	
	is_fellowship_full = fellowship_size != 9
	print("Is fellowship full (==)?", is_fellowship_full)

	var rivendell_location: Vector2 = Vector2(25, 20)
	var mordor_location: Vector2 = Vector2(24, 100)
	
	print("Rivendell length:", rivendell_location.length())
	print("Mordor length:", mordor_location.length())
	var mordor_bigger: bool = mordor_location > rivendell_location
	print("mordor_location > rivendell_location:", mordor_bigger)
	
	var ring_power: float = 0.1 + 0.2
	var true_ring: float = 0.3 
	var is_the_one_ring: bool = ring_power == true_ring
	var is_the_one_ring_correct: bool = is_equal_approx(ring_power, true_ring)
	print(ring_power)
	print(true_ring)
	print("is_the_one_ring (==)?", is_the_one_ring)
	print("is_the_one_ring_correct (is_equal_approx)?", is_the_one_ring_correct)
	

	# or and not
	# || && !
	var rohan_arrives: bool = false
	var gandalf_arrives: bool = true
	var orcs_lose: bool = not rohan_arrives || gandalf_arrives
	print("Do the orcs lose? ", orcs_lose)

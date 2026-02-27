

	# Make the script print whether the player is READY TO FIGHT.
	var health: int = 75
	var potions: int = 2
	var enemies: int = 6
	var arrows: int = 11
	
	# Each enemy needs 2 arrows.
	# Create a variable called arrows_needed and calculate how many arrows are required.
	
	# Create a bool called enough_arrows.
	# It should be true if arrows is greater than or equal to arrows_needed.

	# Each potion heals 20 health.
	# Create a variable called healed_health and calculate the new health.

	# Create a bool called is_safe.
	# The player is safe if healed_health is 100 or more.

	# Create a bool called ready_to_fight.
	# The player is ready if they have enough arrows AND they are safe.
	
	var arrows_needed: int = enemies * 2
	var enough_arrows: bool = arrows >= arrows_needed
	var total_potions_health: int = potions * 20
	var healed_health: int = health + total_potions_health
	var is_safe: bool = healed_health >= 100
	var ready_to_fight: bool = enough_arrows and is_safe

	print("Arrows needed:", arrows_needed)
	print("Enough arrows?", enough_arrows)
	print("total_potions_health:", total_potions_health)
	print("Health after potions:", healed_health)
	print("Safe (>=100)?", is_safe)
	print("READY TO FIGHT?", ready_to_fight)


	
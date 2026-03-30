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

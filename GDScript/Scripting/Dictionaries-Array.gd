@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var rings_of_power: Array[String] = ["Elves", "Dwarves", "Men"]
	rings_of_power.append("Hobbits")
	rings_of_power.append("Orcs")
	rings_of_power.append("Wizards")
	#rings_of_power.erase("Elves")
	print(rings_of_power)
	var random_ring: String = rings_of_power.pick_random()
	print(random_ring)
	rings_of_power.shuffle()
	print(rings_of_power)
	print(rings_of_power.size())
		
	if "Menwe" in rings_of_power:
		print("The race of Men have a ring!")
	else:
		print("No hobbit rings found.")
	
	for race in rings_of_power:
		print(race, " have a ring!")
	
	
	var total_turns: int = 27
	for turn in range(total_turns):
		var index: int = turn % rings_of_power.size()
		var member: String = rings_of_power[index]
		print("Turn ", turn, " : ", member, " have come for the ring!")
	
	
	#var level_items: Array[String] = ["Wooden sword", "Steel Knife", "", "", "Dwarven axe" ]

	var level_items: Dictionary[int, String] = {
		1: "Wooden sword",
		2: "Steel Knife",
		5: "Dwarven axe",
		6: "Mithril armor",
		7: "Andúril, Flame of the West",
		9: "Ring of Power",
		10: "The One Ring"
	}
	

	for level in level_items:
		print("Level %d -> %s" % [level, level_items[level]])
	
	for level_item in level_items.values():
		print(level_item)
	
	level_items[5] = "Elven Bow"
	print(level_items)
	
	level_items.erase(6)
	print(level_items)
	
	var fellowship_dict: Dictionary[String, Dictionary] = {
		"Frodo": {"race": "Hobbit", "weapon": "Sting"},
		"Sam": {"race": "Hobbit", "weapon": "Cooking Pan"},
		"Gandalf": {"race": "Wizard", "weapon": "Glamdring"},
		"Aragorn": {"race": "Human", "weapon": "Andúril"},
		"Legolas": {"race": "Elf", "weapon": "Bow and Daggers"},
		"Gimli": {"race": "Dwarf", "weapon": "Battle Axe"},
		"Boromir": {"race": "Human", "weapon": "Shield and Sword"},
		"Merry": {"race": "Hobbit", "weapon": "Dagger"},
		"Pippin": {"race": "Hobbit", "weapon": "Dagger"}
	}
	
	var hero: String = "Aragorn"
	var hero_weapon: String = fellowship_dict[hero]["weapon"]
	print(hero_weapon)
	
	if "Legolas" in fellowship_dict:
		print(fellowship_dict["Legolas"])
	
	
	#excercise
	var inventory: Array[String] = ["Stick", "Apple", "Torch"]
	print(inventory)
	
	inventory.append("Sword")
	print(inventory)
	
	inventory.append("Shield")
	print(inventory)
	
	inventory.erase("Apple")
	print(inventory)
	
	var is_sword_there: bool = "Sword" in inventory
	print(is_sword_there)
	
	for item in inventory:
		print(item)
	
	var heroes: Dictionary[String, Dictionary] = {
		"Frodo": {"race": "Hobbit", "weapon": "Sting"},
		"Aragorn": {"race": "Human", "weapon": "Andùril"},
		"Legolas": {"race": "Elf", "weapon": "Bow"}
	}
	
	heroes["Gimly"] = {"race": "Dwarf", "weapon": "Axe"}
	print(heroes)
	
	heroes.Legolas.weapon = "Shortsword"
	print(heroes["Legolas"]["weapon"])
	
	print(heroes.Aragorn.weapon)
	
	for item in heroes:
		print(heroes[item])
	

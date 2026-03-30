@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print("Hello I need a beer")
	var age: int = 139
	var player_name: String = "Gimli"
	var health: float = 100.5
	var is_alive: bool = true
	print(age)
	print(type_string(typeof(age)))
	print(player_name)
	print(type_string(typeof(player_name)))
	print(health)
	print(type_string(typeof(health)))
	print(is_alive)
	print(type_string(typeof(is_alive)))


	# Make your own character with 
	# name, age, health, and alive status.
	# Print their values and types.

	var character_name: String = "Legolas"
	var character_age: int = 2931
	var character_health: float = 100.0
	var character_is_alive: bool = true

	print(character_name)
	print(type_string(typeof(character_name)))
	print(character_age)
	print(type_string(typeof(character_age)))
	print(character_health)
	print(type_string(typeof(character_health)))
	print(character_is_alive)
	print(type_string(typeof(character_is_alive)))

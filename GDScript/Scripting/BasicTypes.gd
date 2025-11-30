@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print("This is just the beginning...")
	
	var age: int = 139;
	var player_name: String = "Gimli";
	var health: float = 100.5;
	var isAlive: bool = true; # this is a boolean (true / false)
	
	print("age: ", age);
	print(type_string(typeof(age)));
	
	print("name: ", player_name);
	print(type_string(typeof(player_name)));
	
	print("health: ", health);
	print(type_string(typeof(health)));
	
	print("isAlive: ", isAlive);
	print(type_string(typeof(isAlive)));
	
	var myName: String = "Nicola";
	var myAge: int = 22;
	var myHealth: float = 100.5;
	var myIsAlive: bool = false;
	
	print("My Character Name: ", myName, " (", type_string(typeof(myName)), ")");
	print("My Character Age: ", myAge, " (", type_string(typeof(myAge)), ")");
	print("My Character Health: ", myHealth, " (", type_string(typeof(myHealth)), ")");
	print("My Character is Alive: ", myIsAlive, " (", type_string(typeof(myIsAlive)), ")");
	

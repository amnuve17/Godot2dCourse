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
	
	var rings: int = 9
	var fellowshipSize: int = 5
	var leftoverRings: int = rings % fellowshipSize
	print("Leftover rings: ", leftoverRings)
	
	var isFellowshipFull: bool = fellowshipSize == 9
	print("Is Fellowship Full (==)? ", isFellowshipFull)
	
	isFellowshipFull = fellowshipSize != 9
	print("Is Fellowship Full (!=)? ", isFellowshipFull)
	
	isFellowshipFull = fellowshipSize > 4
	print("Is Fellowship Full (>)? ", isFellowshipFull)

	var rivendellLocation: Vector2 = Vector2(30, 20)
	var mordorLocation: Vector2 = Vector2(25, 100)
	var areTheSame: bool = rivendellLocation == mordorLocation
	var differentPlace: bool = rivendellLocation != mordorLocation
	var mordorBigger: bool = rivendellLocation > mordorLocation
	
	print("Rivendell Location: ", rivendellLocation.length())
	print("Mordor Location: ", mordorLocation.length())
	print("Are the same? (Vector2 ==): ", areTheSame)
	print("Different place (Vector2 !=): ", differentPlace)
	print("rivendellLocation > mordorLocation: ", mordorBigger)
	
	var ringPower: float = 0.1 + 0.2
	var trueRing: float = 0.3
	var isOneRing: bool = ringPower == trueRing
	var isOneRingCorrect: bool = is_equal_approx(ringPower, trueRing)
	
	print("is One Ring (==): ", isOneRing)
	print("is One Ring Correct (is_equal_approx): ", isOneRingCorrect)
	print(ringPower)
	print(trueRing)

	# and or not
	# && || !
	var rohanArrives: bool = true
	var gandalfArrives: bool = false
	var orcsLose: bool = rohanArrives or gandalfArrives #and / not
	print("Do the orcs lose? ", orcsLose)

	var hasSword: bool = true
	var hasShield: bool = false
	var isReady: bool = hasSword and not hasShield
	print("ready? ", isReady)

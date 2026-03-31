class_name Character


#var _health: int = 50
#var _name: String = "NOT SET"
#var _weapon: String = "NO WEAPON"

static var character_count: int = 0

static func get_character_count() -> int:
	return character_count

const MAX_SPEED: int = 1000

var health: int = 20:
	get:
		return health
	set(value):
		health = clampi(value, 0, 100)
		
var name: String = "NOT SET":
	get:
		return name
	set(value):
		name = value
		
var weapon: String = "NO WEAPON":
	get:
		return weapon
	set(value):
		weapon = value
		
#var health: int:
	#get = gethealth, set = sethealth

func _init(p_health: int, p_name: String, p_weapon: String) -> void:
	health = p_health
	name = p_name
	weapon = p_weapon
	character_count += 1
	

func gethealth() -> int:
	print("gethealth()")
	return health
	
func sethealth(newhealth: int) -> void:
	print("sethealth()")
	health = clampi(newhealth, 0, 100)

func print_health() -> void:
	print("Health: %d" % health)

func say_info() -> void:
	print("Name: %s" % name)
	print("Health: %d" % health)
	print("Weapon: %s" % weapon)
	
func _to_string() -> String:
	return "%s reports for duty!" % name
	

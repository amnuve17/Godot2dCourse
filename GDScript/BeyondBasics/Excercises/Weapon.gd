class_name Weapon


static var weapon_count: int = 0


var name: String = "NOT SET":
	get:
		return name
	set(value):
		name = value
		
var damage: int = 0:
	get:
		return damage
	set(value):
		damage = clampi(value, 0, 100)
		
var durability: int = 100:
	get:
		return durability
	set(value):
		durability = clampi(value, 0, 100)

		
static func get_weapon_count() -> int:
	return weapon_count
	

func _init(_name: String, _damage: int, _durability: int) -> void:
	name = _name
	damage = _damage
	durability = _durability
	weapon_count += 1	
	
func use() -> void:
	durability -= 10
	print("Damage delt: %d" % damage)
	
func _to_string() -> String:
	return "%s - DMG: %d | DUR: %d" % [name, damage, durability]
	

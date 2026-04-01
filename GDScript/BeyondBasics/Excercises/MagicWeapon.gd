extends Weapon
class_name MagicWeapon

var mana_cost: int:
	get:
		return mana_cost
	set(value):
		mana_cost = clampi(value, 0, 100)
		
func _init(_name: String, _damage: int, _durability: int, _mana_cost: int) -> void:
	super(_name, _damage, _durability)
	mana_cost = _mana_cost
		
func use() -> void:
	super()
	print("Mana used: %d" % mana_cost)
	
func _to_string() -> String:
	return "%s | MN USD: %d" % [super(), mana_cost]

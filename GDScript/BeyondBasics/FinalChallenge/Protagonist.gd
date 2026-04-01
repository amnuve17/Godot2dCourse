extends Entity
class_name Protagonist

enum HeroClass{WARRIOR, MAGE, ROGUE}

var level: int = 1:
	get:
		return level
	set(value):
		level = clampi(value, 1, 99)
		
var hero_class: HeroClass = HeroClass.WARRIOR:
	get:
		return hero_class
	set(value):
		hero_class = value
		

func _init(_entity_name: String, _hp: int, _hero_class: HeroClass) -> void:
	super(_entity_name, _hp)
	hero_class = _hero_class

func _to_string() -> String:
	return "[PRTGNST] %s (%s) | LV.%d | HP: %d" % [entity_name, HeroClass.keys()[hero_class], level, hp]

func attack(target: Entity) -> void:
	var damage: int = 0
	if hero_class == HeroClass.WARRIOR:
		damage = randi_range(20, 35)
		target.take_damage(damage)
	elif hero_class == HeroClass.MAGE:
		damage = randi_range(10, 45)
		target.take_damage(damage)
	elif hero_class == HeroClass.ROGUE:
		damage = randi_range(15, 30)
		target.take_damage(damage)
	else:
		damage = 0
		print("SELECTED CLASS DOES NOT EXIST")

func take_damage(amount: int) -> void:
	print("[PRTGNST] %s has been hit!" % entity_name)
	super(amount);

class_name Entity

static var entity_count: int = 0

const MAX_HP = 200

var entity_name: String = "NOT SET":
	get:
		return entity_name
	set(value):
		entity_name = value
		
var hp: int = 100:
	get:
		return hp
	set(value):
		hp = clampi(value, 0, MAX_HP)

var is_alive: bool:
	get:
		return hp > 0
		
func _init(_entity_name: String, _hp: int) -> void:
	entity_name = _entity_name
	hp = _hp
	entity_count += 1
	
func _to_string() -> String:
	return "[%s] HP: %d" % [entity_name, hp]
	
func take_damage(amount: int) -> void:
	hp -= amount
	print("[%s] took %d damage! | New HP: %d" % [entity_name, amount, hp])

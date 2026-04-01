extends Entity
class_name  Enemy

enum EnemyType{ GOBLIN, ORC, DRAGON }

var enemy_type: EnemyType = EnemyType.GOBLIN:
	get:
		return enemy_type
	set(value):
		enemy_type = value
		
var loot: String = "NO LOOT":
	get:
		return loot
	set(value):
		loot = value
		

func _init(_entity_name: String, _hp: int, _enemy_type: EnemyType, _loot: String) -> void:
	super(_entity_name, _hp)
	enemy_type = _enemy_type
	loot = _loot

func _to_string() -> String:
	return "[ENM] %s (%s) | HP: %d | LOOT: %s" % [entity_name, EnemyType.keys()[enemy_type], hp, loot]

func attack(target: Entity) -> void:
	var damage: int = 0
	if enemy_type == EnemyType.GOBLIN:
		damage = randi_range(5, 10)
		target.take_damage(damage)
	elif enemy_type == EnemyType.ORC:
		damage = randi_range(15, 25)
		target.take_damage(damage)
	elif enemy_type == EnemyType.DRAGON:
		damage = randi_range(30, 50)
		target.take_damage(damage)
	else:
		damage = 0
		print("SELECTED ENEMY TYPE DOES NOT EXIST")
	
func drop_loot() -> String:
	if is_alive == false:
		return "Enemy dropped %s" % loot
	else:
		return "ENEMY IS ALIVE: NO LOOT!"

class_name DungeonRoom

var room_name: String = "NO ROOM NAME SET":
	get:
		return room_name
	set(value):
		room_name = value
		
var enemies: Array[Enemy] = []:
	get:
		return enemies
	set(value):
		enemies = value
			
var cleared: bool:
	get: 
		return is_cleared()
			
			
func _init(_room_name: String, _enemies: Array[Enemy]):
	room_name = _room_name
	enemies = _enemies

func is_cleared() -> bool:
	var dead_enemies: int = 0
	for enemy in enemies:
		if enemy.is_alive == false:
			dead_enemies += 1
	return dead_enemies == enemies.size()
	
func get_alive_enemies() -> Array[Enemy]:
	var alive_enemies: Array[Enemy] = []
	for enemy in enemies:
		if enemy.is_alive == true:
			alive_enemies.push_back(enemy)
	return alive_enemies

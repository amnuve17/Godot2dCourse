@tool
extends EditorScript

func AttackEnemy(damage: int, enemy: String = "Troll") -> void:
	print("AttackEnemy enemy: ", enemy)
	print("AttackEnemy damage: ", damage)

func GetPlayerHealth() -> int:
	var PHealth: int = randi() % 100 + 1
	return PHealth

func RollDice() -> void:
	print("Roll a dice")
	var result: int = randi() % 6 + 1
	print("Your result is:", result)

func TryChangeNumber(num: int) -> void:
	num += 10
	print("Inside method, num is ", num)
# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	RollDice()
	print("Player Health: ", GetPlayerHealth())
	
	AttackEnemy(20, "Orcs")
	AttackEnemy(50)
	
	var n: int = 5
	print("Before changing number is ", n)
	TryChangeNumber(n)
	print("After changing number is ", n)

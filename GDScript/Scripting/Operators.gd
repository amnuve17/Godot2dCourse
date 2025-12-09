@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var orcs: int = 200
	var elves: int = 150
	var totalWarriors = orcs + elves
	var orcCasualities: int = orcs - 50
	var elvesLost: float = elves / 4.0
	var totalArrowsNeeded: int = elves * 2
	
	print("Total Warriors: ", totalWarriors)
	print("Orcs left after battle: ", orcCasualities)
	print("Elves lost: ", elvesLost)
	print(type_string(typeof(elvesLost)))
	print("Total arrows needed: ", totalArrowsNeeded)
	print(type_string(typeof(totalArrowsNeeded)))
	
	

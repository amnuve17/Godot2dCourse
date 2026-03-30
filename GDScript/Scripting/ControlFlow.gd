@tool
extends EditorScript

func _run() -> void:
	var ring_bearer: String = "Frodo" 
	
	if ring_bearer == "Boromir":
		print("You cannot wield it!")
	elif ring_bearer == "Frodo":
		print("Take it to the fire from whence it came!")
	else:
		print("Gollum has the ring")
		
	
	var arrows: int = 10
	while arrows > 0:
		arrows -= 1
		if arrows == 4:
			continue
		print("Legolas shoots an arrow! Arrows left:", arrows)
	
	var fellowship: Array[String] = [
		"Frodo", "Sam", "Aragorn", "Gimli", "Legolas", 
		"Gandalf", "Boromir", "Merry", "Pippin"
	]
	
	for member in fellowship:
		if member == "Gimli":
			break
		elif member == "Gandalf":
			continue
		print(member, " joins the quest!")
		
	
	for orc in range(21,5,-4):
		print("Orc: ", orc)
		
	var PisneloCompany: Array[String] = ["Nicola", "Patte", "Thommy", "Daniele"]
	var cacasotto: String = "Daniele"
	var cacasopra: String = "Thommy"
	
	for pisnelo in PisneloCompany:
		if pisnelo == cacasotto:
			continue
		elif pisnelo == cacasopra:
			print(pisnelo, " sei un coglione")
			continue
		print("Pisnelo: ", pisnelo)
	

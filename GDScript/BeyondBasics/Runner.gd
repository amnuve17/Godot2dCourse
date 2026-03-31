@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print("I am alive")
	Character.character_count = 0
	var aragorn: Character = Character.new(100, "Aragorn", "Sword") #creo una istanza di character
	aragorn.print_health()
	aragorn.health = 100
	aragorn.print_health()
	print(aragorn.get_instance_id())
	
	var rosso: Character = Character.new(75, "Rosso", "Rapier")
	rosso.say_info()
	rosso.health = 125
	rosso.name = "Blue"
	rosso.weapon = "Leash"
	print("Character name: %s" % rosso.name)
	print("Rosso health: %d" % rosso.health)
	print("Character weapon %s" % rosso.weapon)
	
	var yurtle: Character = Character.new(75, "Yurtle", "Gloves")
	var kaito: Hero = Hero.new(75, "Kaito", "Sniper Rifle")
	
	yurtle.say_info()
	kaito.say_info()

	if yurtle is Hero: print("Yurtle hero")
	if yurtle is Character: print("Yurtle character")
	if kaito is Hero: print("Kaito hero")
	if kaito is Hero: print("Kaito hero")
	
	print(kaito)

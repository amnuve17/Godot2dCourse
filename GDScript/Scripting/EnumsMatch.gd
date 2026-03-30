@tool
extends EditorScript


enum Race { HOBBIT, ELF, DWARF, HUMAN, ORC, WIZARD }
enum State { IDLE, RUN, JUMP, DEAD }

func IdentifyRace(theRace: Race) -> void:
	
	match  theRace:
		Race.HOBBIT:
			print("Race.HOBBIT")
		Race.DWARF, Race.WIZARD:
			print("Race.DWARF or Race.WIZARD")
		_:
			print("Race is not what we need")
		
	
	#if theRace == Race.HOBBIT:
		#print("Race.Hobbit")
	#elif theRace == Race.DWARF:
		#print("Race.DWARF")@
	#else:
		#print("Race is not what we need")

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var aragornRace: Race = Race.HUMAN
	var legolasRace: Race = Race.ELF
	var gimlyRace: Race = Race.DWARF
	print(aragornRace)
	print(legolasRace)
	print(gimlyRace)
	print(Race.keys()[gimlyRace])
	# Valgono come integer anche se appaiono testualmente
	
	IdentifyRace(gimlyRace)
	IdentifyRace(legolasRace)

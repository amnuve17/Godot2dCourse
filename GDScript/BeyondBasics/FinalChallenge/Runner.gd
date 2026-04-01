@tool
extends EditorScript

#Logica del Runner
#
#Crea un Hero (classe a tua scelta) e stampa le sue info
#Crea almeno 3 stanze con nemici diversi usando DungeonRoom
#Simula il dungeon con un loop sulle stanze:
#
#Per ogni stanza, combatti finché tutti i nemici sono morti o l'hero muore
#Ogni round: hero attacca un nemico vivo random, poi ogni nemico vivo attacca l'hero
#Stampa lo stato ad ogni round
#Quando un nemico muore, chiama drop_loot() e stampalo
#Se l'hero muore, interrompi tutto e stampa "Game Over"
#
#
#Se l'hero sopravvive a tutte le stanze, stampa il totale dei nemici sconfitti e il suo HP finale
#Alla fine stampa Entity.entity_count
#
#
#Vincoli
#
#Nessuna variabile globale nel Runner — tutto locale o passato come parametro
#Ogni classe in un file separato
#Il combat loop deve usare while + break
#Usa is almeno una volta nel Runner per distinguere Hero da Enemy in un Array misto

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	Entity.entity_count = 0 #just for testing purposes
	var rosso: Protagonist = Protagonist.new("Rosso", 200, 0)
	var goblin_1: Enemy = Enemy.new("Goblin 1", 40, 0, "Cuoio")
	var goblin_2: Enemy = Enemy.new("Goblin 2", 35, 0, "Spada d'osso")
	var goblin_3: Enemy = Enemy.new("Goblin 3", 45, 0, "Vestiti Sporchi")
	var dungeon_room_1: DungeonRoom = DungeonRoom.new("dungeon_room_1", [goblin_1, goblin_2, goblin_3])
	print("Is room cleared: %s" % dungeon_room_1.cleared)
	print("There are still enemies alive: ", str(dungeon_room_1.get_alive_enemies()))
	rosso.attack(goblin_1)
	rosso.attack(goblin_1)
	rosso.attack(goblin_1)
	print(goblin_1.drop_loot())
	print("Is room cleared: %s" % dungeon_room_1.cleared)
	print("There are still enemies alive: ", str(dungeon_room_1.get_alive_enemies()))
	rosso.attack(goblin_2)
	rosso.attack(goblin_2)
	rosso.attack(goblin_2)
	print(goblin_2.drop_loot())
	print("Is room cleared: %s" % dungeon_room_1.cleared)
	print("There are still enemies alive: ", str(dungeon_room_1.get_alive_enemies()))
	rosso.attack(goblin_3)
	rosso.attack(goblin_3)
	rosso.attack(goblin_3)
	print(goblin_2.drop_loot())
	print("Is room cleared: %s" % dungeon_room_1.cleared)
	print("There are still enemies alive: ", str(dungeon_room_1.get_alive_enemies()))
	
	

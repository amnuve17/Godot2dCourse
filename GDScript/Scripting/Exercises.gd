@tool
extends EditorScript


#Esercizio 1 — Tipi e Stringhe
#Crea una funzione describe_hero(name: String, race: String, level: int, health: float) -> String che restituisce una stringa formattata così:
#[Lv.5] Aragorn (Human) - HP: 87.3
#Chiamala con almeno 3 eroi diversi e stampane il risultato.

func describe_hero(name: String, race: String, level: int, health: float) -> String:
	return "[Lv. %d] %s (%s) - HP: %.1f" % [level, name, race, health]
	
	
#Scrivi una funzione evaluate_loot(gold: int, has_key: bool, enemies_alive: int) -> String che ritorna:
#"Jackpot" se gold > 100 e has_key == true
#"Dangerous" se enemies_alive > 0 e gold > 50
#"Empty room" se gold == 0 e non ci sono nemici
#"Proceed with caution" in tutti gli altri casi

func evaluate_loot(gold: int, hasKey: bool, enemiesAlive: int) -> String:
	if gold > 100 and hasKey == true:
		return "Jackpot"
	elif enemiesAlive > 0 and gold > 50:
		return "Dangerous"
	elif gold == 0 and enemiesAlive == 0:
		return "Empty Room"
	else:
		return "Proceed with caution"
		
#Esercizio 3 — Enum + Match
#Definisci un enum WeaponType con almeno 5 valori. 
#Scrivi una funzione get_weapon_damage(weapon: WeaponType) -> int che usa match e 
#ritorna un danno diverso per tipo. Poi crea un Array di almeno 4 armi, 
#iteralo e stampa "[NomeArma]: X damage" per ognuna.

enum WeaponType {SPADA, LANCIA, ARCO, SCUDO, FRUSTA}
var weapons: Array[WeaponType] = [WeaponType.SPADA, WeaponType.SCUDO, WeaponType.ARCO, WeaponType.FRUSTA]

func get_weapon_damage(weapon: WeaponType) -> int:
	var damage: int = 0
	match weapon:
		WeaponType.SPADA:
			damage = 50
		WeaponType.LANCIA:
			damage = 35
		WeaponType.ARCO: 
			damage = 25
		WeaponType.SCUDO:
			damage = 5
		WeaponType.FRUSTA:
			damage = 65
	return damage
	
#Esercizio 4 — Array e Dictionary
#Crea un Dictionary[String, Dictionary] chiamato dungeon_rooms con almeno 4 stanze. 
#Ogni stanza deve avere: enemies: int, loot: String, cleared: bool.
#Scrivi una funzione clear_room(rooms: Dictionary, room_name: String) -> void che imposta 
#cleared = true per quella stanza se esiste, altrimenti stampa un warning. 
#Poi itera tutto il dizionario e stampa solo le stanze non ancora cleared.

var dungeon_rooms: Dictionary[String, Dictionary] = {
	"Ingresso": { "enemies": 4, "loot": "none", "cleared": true },
	"Salone": { "enemies": 6, "loot": "wine chalice", "cleared": false },
	"Camere": {"enemies": 0, "loot": "legendary sword", "cleared": false},
	"Balcone": {"enemies": 5, "loot": "vibrator", "cleared": true}
}

func clear_room(rooms: Dictionary, room_name: String) -> void:
	if room_name in rooms:
		rooms[room_name].cleared = true
	else:
		print("Stanza non trovata: %s" % room_name)

#Esercizio 5 — Sfida integrativa
#Simula 5 round di combattimento tra un player e un nemico con questa logica:
#Player HP: 100, Enemy HP: 80
#Ogni round: il player fa danno random tra 10-25, il nemico fa danno random tra 5-15
#Usa un while che si ferma quando uno dei due arriva a 0 HP (attenzione ai valori negativi)
#Ogni round stampa lo stato, alla fine dichiara il vincitore

func take_damage(is_player_turn: bool, player_hp: int, enemy_hp: int) -> Array[int]:
	var damage: int = randi_range(10, 25)
	if is_player_turn == true:
		enemy_hp = maxi(enemy_hp - damage, 0)
		print("Il nemico ha subito: %d danni - HP totali: %d " % [damage, enemy_hp])
	else:
		player_hp = maxi(player_hp - damage, 0)
		print("Il player ha subito: %d danni - HP totali: %d " % [damage, player_hp])
	return [player_hp, enemy_hp]
		

func check_for_winner(player_hp: int, enemy_hp: int) -> void:
	if player_hp == 0:
		print("il nemico ha vinto!")
	elif enemy_hp == 0:
		print("il player ha vinto!")

func start_combat() -> void:
	var player_hp: int = 100
	var enemy_hp: int = 100
	var current_turn = 0
	while player_hp > 0 and enemy_hp > 0:
		var result: Array[int] = take_damage(current_turn % 2 == 0, player_hp, enemy_hp)
		player_hp = result[0]
		enemy_hp = result[1]
		current_turn += 1
	check_for_winner(player_hp, enemy_hp)
			
			

# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print(describe_hero("Aragorn", "Human", 5, 87.3464))
	print(describe_hero("Dux", "Gnome", 9, 104.21))
	print(describe_hero("Rosso", "Half Elf", 19, 169))

	print(evaluate_loot(150, true, 0))
	print(evaluate_loot(60, false, 5))
	print(evaluate_loot(0, false, 0))
	print(evaluate_loot(45, true, 4))
	
	for weapon in weapons:
		print(WeaponType.keys()[weapon], ": ", get_weapon_damage(weapon), " damage")
		
	clear_room(dungeon_rooms, "Salone")
	#clear_room(dungeon_rooms, "Camere")
	
	for room in dungeon_rooms:
		if dungeon_rooms[room].cleared == false:
			print(dungeon_rooms[room])
	
	start_combat()
	

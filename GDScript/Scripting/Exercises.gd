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
	
	

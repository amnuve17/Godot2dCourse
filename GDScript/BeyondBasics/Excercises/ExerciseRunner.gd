@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	Weapon.weapon_count = 0 #just for testing purposes
	var master_sword: Weapon = Weapon.new("Master Sword", 100, 80)
	master_sword.use()
	print(master_sword)
	
	var falchion: Weapon = Weapon.new("Falchion", 80, 100)
	var morning_star: Weapon = Weapon.new("Morning Star", 90, 60)
	print("Number of weapons: %d" % Weapon.get_weapon_count())
	
	var ice_wand: MagicWeapon = MagicWeapon.new("Ice Wand", 75, 25, 15)
	var fire_wand: MagicWeapon = MagicWeapon.new("Fire Wand", 95, 15, 30)
	
	ice_wand.use()
	print(ice_wand)
	
	var weapons: Array[Weapon] = [falchion, morning_star, ice_wand, fire_wand]
	
	for weapon in weapons:
		if weapon is MagicWeapon: 
			print("[MAGIC] ", weapon)
		elif  weapon is Weapon:
			print("[NORMAL] ", weapon)

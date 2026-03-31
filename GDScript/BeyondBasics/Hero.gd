class_name  Hero 
extends Character

func say_info() -> void:
	print("Name is not: %s" % name)
	print("Health is not: %d" % health)
	print("Weapon is not: %s" % weapon)
	super() #runna la funzione originale

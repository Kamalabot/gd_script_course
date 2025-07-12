extends Node

var xp := 0

signal leveled_up # this signal can trigger this script also

func _on_timer_timeout() -> void:
	xp += 5
	print(xp)
	if xp >= 15:
		xp = 0
		print("you leveled up")	
		leveled_up.emit()

	
func _on_leveled_up() -> void:
	print("Dingadin")

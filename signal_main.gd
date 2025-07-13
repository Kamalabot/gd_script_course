extends Node

signal leveled_up

var xp := 0

func _on_timer_timeout() -> void:
	# print("Timer out...")
	xp += 5
	# print(xp)
	if xp >= 20:
		# print("leveled up")
		xp = 0
		leveled_up.emit()

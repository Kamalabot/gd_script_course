extends Node

signal health_changed(new_value)

var health := 10:
	set(value):
		health = clamp(value, 0, 110)
		health_changed.emit(health)
		
func _ready() -> void:
	health = 150

func _on_health_changed(new_health) -> void:
	print(new_health)

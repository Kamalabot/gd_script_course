extends Node2D

signal health_changed(new_health)

var health := 100:
	set(value):
		health = clamp(value, 0, 100)
		health_changed.emit()
		
var chance := 0.2
var chance_pct: int:
	get:
		return chance * 100
		
func _ready() -> void:
	 pass
		
func _on_health_changed(new_health):
	pass

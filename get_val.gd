extends Node

var chance := 0.2
var chance_pct: int:
	get:
		return chance * 100
		# this will be used when print(chance_pct) is called

func _ready() -> void:
	print("chance pct is: ", chance_pct)
	chance = 0.7
	print("chance pct is: ", chance_pct)

extends Node

@export var new_val = 5

@onready var label: Label = %Label
var health = 100.0 # This variable is script wide scope

var vec2 = Vector2(0.0, 0.0)
var vec3 = Vector3(2, 5.7, 6)

var auto_typed := 5 # this will be automatically type recognized by Godot

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var for_only_func = 0
	var string_health = str(health) + " is the health..."
	label.text = "Awesome Godot Script"
	label.modulate = Color.CHOCOLATE
	print("The player is having ", health, " health")
	vec2.x = 10.0
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("change_color"):
		label.modulate = Color.RED
		health -= 10
		
		if health <= 0:
			print("You died...")
			label.text = "Game over, stop pressing Space bar"
		elif health <= 50:
			label.text = "Stop fooling around"
		else:	
			print("Player health is reduced to: ", health)
		
	if event.is_action_released("change_color"):
		label.modulate = Color.YELLOW

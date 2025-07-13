extends Node

@export var super_val = 5

const GRAVITY = -9.81

@export_category("Monument") # this creates a new category
@export var monument = 5

@export var laptop_to_open: Laptop

@onready var label: Label = %Label
var health = 100.0 # This variable is script wide scope

var vec2 = Vector2(0.0, 0.0)
var vec3 = Vector3(2, 5.7, 6)

var auto_typed := 5 # this will be automatically type recognized by Godot

# inputs to the functions are called parameters and outputs are returns
func jump():
	print("OUT RUN...")

func add(num1, num2):
	print("There is ", num1, " and ", num2)
	
func addK(num1, num2):
	return "There is " + str(num1) + " and " + num2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var _for_only_func = 0
	var _string_health = str(health) + " is the health..."
	label.text = "Awesome Godot Script"
	label.modulate = Color.CHOCOLATE
	print("The player is having ", health, " health")
	vec2.x = 10.0
	var height = randi_range(140, 153)
	print("The height is ", height)
	laptop_to_open.close()
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("change_color"):
		jump()
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


func _on_signal_main_leveled_up() -> void:
	print("Ring a Level up")	  # Replace with function body.

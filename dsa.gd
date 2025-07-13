extends Node3D

@onready var weapon: Node = $"../Player/Weapon"
# @onready var weapon: Node = %Weapon

enum { ALLY, NEUTRAL, ENEMY }
enum Devices { MOBILE, PC, TABLETS, PLAYSTATION } # Using it for states & exported variables
# @export var unit_align = Devices this creates a confusing update
@export var unit_align: Devices 

# can export Node types too
@export var your_node: Node

func  _ready() -> void:
	# var items = [5, 7, 9, 7]
	var _items: Array[int] = [5, 7, 9, 7]
	# print("The items are ", items)
	
	#for n in 8:
		#print(n) # iterates for 8 times
		
	var _dicty = {
		"Villain": 15,
		"Mob": 100,
		"Boss": 1000
	}
	
	var _dicty_dict = {
		"make1": {"usupe": 5, "health": 5},
		"make2": {"isupe": 5, "health": 57},
		"make3": {"osupe": 5, "health": 577},
	}
	#for character in _dicty:
		#print(_dicty[character])
		
	#for item in items:
		#print(item)
	
	# accesssig enums
	var _it = Devices.MOBILE
	
	# Match statement
	match unit_align:
		Devices.PC:
			print("Its PC")
		Devices.PLAYSTATION:
			print("Its playstation")
		Devices.MOBILE:
			print("Go Mobile")
		Devices.TABLETS:
			print("I am not touching these")
		_:
			print("Don't care")
	

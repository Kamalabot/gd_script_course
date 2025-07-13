class_name Laptop

extends Node

@export var make: String
@export var cost: float

var external_btry := Battery.new()
var internal_btry := Battery.new()

func _ready() -> void:
	external_btry.charge = 150
	internal_btry.size = 7
	print("I am ", make, external_btry.charge)
	print("I am ", make, internal_btry.size)

func open():
	print("I am opened")
	
func close():
	print("I am " + make + " and closed")
	
func costing():
	print("I am costing ", cost)

class Battery:
	var charge := 10
	var size :=5

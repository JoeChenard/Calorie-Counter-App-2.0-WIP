extends Node

var calendar : Dictionary
var menu : Dictionary

var nutritionDB : Dictionary

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in ['hi','what']:
		nutritionDB[i] = "string" + str(i)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

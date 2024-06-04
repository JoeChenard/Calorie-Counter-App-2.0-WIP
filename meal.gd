extends PanelContainer

var item = preload("res://meal_item.tscn")
@export var meal = 'Breakfast'

# Called when the node enters the scene tree for the first time.
func _ready():
	$MarginContainer/VBoxContainer/HBoxContainer/mealLabel.text = meal


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var food = item.instantiate()
	$MarginContainer/VBoxContainer/Panel/MarginContainer/VBoxContainer.add_child(food)

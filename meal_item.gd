extends MarginContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#%Tree.clear()
	#$Tree.cell_selected.connect(treeConnect)
	#var root = %Tree.create_item()
	#root.set_text(0, 'Nutrition:')
	#for i in 10:
		#var item = %Tree.create_item(root)
		#item.set_text(0, "Iron")
		#for j in 5:
			#var itemI = %Tree.create_item(item)
			#itemI.set_text(0, 'ki-mochi')
			#itemI.set_suffix(0, 'Kcal')
	#var root = %Tree.create_item()
	#root.set_text(0, 'Nutrition:')
	#for i in 5:
		#var item = %Tree.create_item(root)
		#item.set_text(0, "Iron")
		#item.set_suffix(0, '300mg')
	#root.set_collapsed_recursive(true)
		#for j in 5:
			#var itemI = %Tree.create_item(item)
			#itemI.set_text(0, 'Iron')
			


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_nutrition_button_pressed():
	$VBoxContainer/ItemList.visible = not $VBoxContainer/ItemList.visible

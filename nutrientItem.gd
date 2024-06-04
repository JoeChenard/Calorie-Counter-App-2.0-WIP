extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	#var tree = $VBoxContainer/PanelContainer/VBoxContainer/oldentries
	#var root = tree.create_item()
	#tree.hide_root = true
	for i in global.nutritionDB:
		#var child1 = tree.create_item(root)
	#var child2 = tree.create_item(root)
	#var subchild1 = tree.create_item(child1)
		#child1.set_text(0, str(global.nutritionDB[i]))
	
	
		$VBoxContainer/searchContainer/VBoxContainer/oldEntryList.add_item(str(i))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func isnew():
	if global.nutritionDB.has($VBoxContainer/HBoxContainer/nutrientEdit.text):
		$VBoxContainer/HBoxContainer/new.visible = false
	else:
		$VBoxContainer/HBoxContainer/new.visible = true

func _on_addnew_entry_text_submitted(new_text):
	$VBoxContainer/HBoxContainer/nutrientEdit.text = new_text
	
	isnew()
	

func _on_old_entry_list_item_clicked(index, at_position, mouse_button_index):
	#print(index, at_position, mouse_button_index)
	$VBoxContainer/HBoxContainer/nutrientEdit.text = $VBoxContainer/searchContainer/VBoxContainer/oldEntryList.get_item_text(index)
	$VBoxContainer/searchContainer.visible = false
	isnew()


func _on_nutrient_edit_pressed():
	$VBoxContainer/searchContainer.visible = true


func _on_addnew_units_text_submitted(new_text):
	$VBoxContainer/HBoxContainer/amount.suffix = new_text
	$VBoxContainer/searchContainer.visible = false

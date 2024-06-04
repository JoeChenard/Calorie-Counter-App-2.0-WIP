extends Control

#icon
#name
#unit type
#popularity dic
#nutrient dic
var nutrient = preload("res://nutrient_item.tscn")
#var emojis = "🍏🍎🍐🍊🍋🍋‍🟩🍌🍉🍇🍓🫐🍈🍒🍑🥭🍍🥥🥝🍅🍆🥑🫛🥦🥬🥒🌶🫑🌽🥕🫒🧄🧅🥔🍠🫚🥐🥯🍞🥖🥨🧀🥚🍳🧈🥞🧇🥓🥩🍗🍖🦴🌭🍔🍟🍕🫓🥪🥙🧆🌮🌯🫔🥗🥘🫕🥫🫙🍝🍜🍲🍛🍣🍱🥟🦪🍤🍙🍚🍘🍥🥠🥮🍢🍡🍧🍨🍦🥧🧁🍰🎂🍮🍭🍬🍫🍿🍩🍪🌰🥜🫘🍯🥛🫗🍼🫖☕️🍵🧃🥤🧋🍶🍺🍻🥂🍷🥃🍸🍹🧉🍾🧊🥄🍴🍽🥣🥡🥢🧂🌾🪻🦑🍀🌿🌱🛟🎏⚜️🩷🍝🍓🍒🍎🍉🍑🍊🥭🍍🍌🍇🫐🫒🥝🍐🍏🍈🍋‍🟩🍋🥥🍅🌶️🫚🥕🧅🌽🥦🥒🍄‍🟫🥔🧄🍆🍠🥑🫑🫛🥬🫘🌰🥜🍞🫓🥐🥖🥯🧇🍔🍖🍗🥩🥓🧀🥚🍳🥞🌭🥪🥨🍟🍕🫔🌮🌯🥙🍛🍲🥗🥣🫕🥫🍝🥘🧆🍜🦪🦞🍣🍤🥡🍚🍱🥟🍢🍙🍘🍥🍡🥠🥮🍧🍨🍫🍬🍭🧁🎂🍮🍰🥧🍦🍩🍪🍯🧂🧈🍿🧊🫙🥤🍺🧉🫖☕️🍵🍼🥛🧃🧋🍻🥂🍾🍷🥃🫗🍸🍹🍶🍽️🔪🥄🍴🥢"
var emojiList = ["🍏", "🍎", "🍐", "🍊", "🍋", "‍", "🟩", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝", "🍅", "🍆", "🥑", "🫛", "🥦", "🥬", "🥒", "🌶", "🫑", "🌽", "🥕", "🫒", "🧄", "🧅", "🥔", "🍠", "🫚", "🥐", "🥯", "🍞", "🥖", "🥨", "🧀", "🥚", "🍳", "🧈", "🥞", "🧇", "🥓", "🥩", "🍗", "🍖", "🦴", "🌭", "🍔", "🍟", "🍕", "🫓", "🥪", "🥙", "🧆", "🌮", "🌯", "🫔", "🥗", "🥘", "🫕", "🥫", "🫙", "🍝", "🍜", "🍲", "🍛", "🍣", "🍱", "🥟", "🦪", "🍤", "🍙", "🍚", "🍘", "🍥", "🥠", "🥮", "🍢", "🍡", "🍧", "🍨", "🍦", "🥧", "🧁", "🍰", "🎂", "🍮", "🍭", "🍬", "🍫", "🍿", "🍩", "🍪", "🌰", "🥜", "🫘", "🍯", "🥛", "🫗", "🍼", "🫖", "☕", "️", "🍵", "🧃", "🥤", "🧋", "🍶", "🍺", "🍻", "🥂", "🍷", "🥃", "🍸", "🍹", "🧉", "🍾", "🧊", "🥄", "🍴", "🍽", "🥣", "🥡", "🥢", "🧂", "🌾", "🪻", "🦑", "🍀", "🌿", "🌱", "🛟", "🎏", "⚜", "🩷", "🍄", "🟫", "🦞", "🔪"]

# Called when the node enters the scene tree for the first time.
func _ready():
	#for i in emojis:
		#if not emojiList.has(i):
			#emojiList.append(i)
	#print(emojiList)
	for i in emojiList:
		var emojiButton = Button.new()
		emojiButton.text = i
		emojiButton.pressed.connect(emojiSelect.bind(emojiButton.text))
		#emojiButton.add_theme_font_size_override('emojiButton', 75)
		#emojiButton.size = Vector2(300,300)
		emojiButton.add_theme_font_size_override("font_size", 35)
		$PanelContainer/MarginContainer/emojiGrid.add_child(emojiButton)
	$PanelContainer.position.y = 2000
	
	
	#http_data(2118224) #cheese or something
	#http_data(2626748) #BB power waffle
	#http_data(2489244)

func _notification(what):
	if what == 1007:
		if $PanelContainer.visible:
			$AnimationPlayer.play('slideDown')
		else:
			get_tree().change_scene_to_file("res://main.tscn")

func emojiSelect(text):
	$VBoxContainer/HBoxContainer/emojiButton.text = text
	$AnimationPlayer.play('slideDown')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var nut = nutrient.instantiate()
	$VBoxContainer/PanelContainer/ScrollContainer/MarginContainer/VBoxContainer/VBoxContainer.add_child(nut)


func _on_sub_pressed():
	if $VBoxContainer/PanelContainer/ScrollContainer/MarginContainer/VBoxContainer/VBoxContainer.get_child_count() > 0:
		$VBoxContainer/PanelContainer/ScrollContainer/MarginContainer/VBoxContainer/VBoxContainer.get_child(-1).queue_free()


func _on_emoji_button_pressed():
	$AnimationPlayer.play('slideUp')
	print('hard pressed for answers?')


func _on_popup_menu_id_pressed(id):
	$USDAcontainer/VBoxContainer/HBoxContainer/VBoxContainer/databaseType.text = $USDAcontainer/VBoxContainer/HBoxContainer/VBoxContainer/databaseType/PopupMenu.get_item_text(id)


func _on_database_type_pressed():
	$USDAcontainer/VBoxContainer/HBoxContainer/VBoxContainer/databaseType.visible = true

func http_data(input):
	$HTTPRequest.request_completed.connect(_on_request_completed)
	$HTTPRequest.request("https://api.nal.usda.gov/fdc/v1/food/" + str(input) +"?api_key=DEMO_KEY")
	#$HTTPRequest.request("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=DEMO_KEY&query=thick%20and%20fluffy%20power%20waffle&pageSize=100&dataType=Branded&brandOwner=Baker%20Mills")
	#$HTTPRequest.request("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=DEMO_KEY&query=HIGH%20PROTEIN%20SHAKE%20CHOCOLATE&pageSize=100&dataType=Branded")

func http_search():
	$HTTPRequest.request_completed.connect(_on_request_completed)
	$HTTPRequest.request("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=DEMO_KEY&query=Cheddar%20Cheese")

func _on_request_completed(result, response_code, headers, body):
	print(response_code)
	var json = JSON.parse_string(body.get_string_from_utf8())
	print(json)
	#print(len(json['foods']))
	#for i in json['foods']:
		#print(i["description"])
		
	#global.currentDeck = json["values"]
	#global.currentDims = global.currentDeck.pop_front()
	#global.currentDeck.shuffle()
	
	#data comes in as list of lists: json["values"][0][0] gives first row first item
	#get_tree().change_scene_to_file("res://card_viewer.tscn")
	
	


func _on_food_name_focus_entered():
	$USDAcontainer/VBoxContainer/searchTips.visible = true


func _on_food_name_focus_exited():
	$USDAcontainer/VBoxContainer/searchTips.visible = false

extends Control

var month := preload("res://month.tscn")
const day = preload("res://day_button.gd")

var months = {
	'January' : 31,
	'February' : 28,
	'March' : 31,
	'April' : 30,
	'May' : 31,
	'June' : 30, 
	'July' : 31,
	'August' : 31,
	'September' : 30,
	'October' : 31,
	'November' : 30,
	'December' : 31}

# Called when the node enters the scene tree for the first time.
func _ready():
#	print(Time.get_unix_time_from_datetime_string('2023-6-11'))
#	print(Time.get_date_dict_from_unix_time(1686441600))
#	$ScrollContainer/VBoxContainer/month.propogate_days(Time.get_unix_time_from_datetime_string('2023-06-01'))
	for i in 12:
		var MonthI = month.instantiate()
		MonthI.propogate_days(Time.get_unix_time_from_datetime_string(str(2021) + '-' + str(i+1) + '-1'))
		$ScrollContainer/VBoxContainer.add_child(MonthI)
		for j in MonthI.get_child(2).get_children():
			print(j)
			if j is day:
				j.setprogress()
	
	#$yearMenu/SpinBox.value = global.focused_year
	print($ScrollContainer.scroll_vertical)
	await get_tree().process_frame
	var currentMonth = Time.get_date_dict_from_system()['month']
	if currentMonth < 6:
		$ScrollContainer.scroll_vertical = 500*currentMonth - 500
	else:
		$ScrollContainer.scroll_vertical = 500*currentMonth
	printt($ScrollContainer.scroll_vertical, Time.get_date_dict_from_system()['month'])
	
	
	#~~~APRIL FOOLS~~~
	#var fools = Time.get_date_dict_from_system()
	#if fools['month'] == 4 and fools['day'] == 1:
		#$foolsfx.play()
		#$foolpic.visible = true
	
#	$debug.text = str(global.calendarDic)

func select_day():
	pass	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_menu_pressed():
	$yearMenu.visible = not $yearMenu.visible


func _on_year_confirm_pressed():
	#global.focused_year = $yearMenu/SpinBox.value
	get_tree().reload_current_scene()


func _on_audio_stream_player_finished():
	$foolpic.visible = false


func _on_settings_pressed():
	pass
#	global.calendarDic = {}
#	global.save_data()

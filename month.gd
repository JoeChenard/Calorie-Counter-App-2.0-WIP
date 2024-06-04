extends Control

var day := preload("res://day_button.tscn")
var dumb := preload("res://dumby_button.tscn")

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

var monthList = [
	'January',
	'February',
	'March',
	'April',
	'May',
	'June', 
	'July',
	'August',
	'September',
	'October',
	'November',
	'December']

func _ready():
	pass

func propogate_days(date):
	var timeDic = Time.get_date_dict_from_unix_time(date)
	$title.text = monthList[timeDic['month'] - 1]
	for i in timeDic['weekday']:
		var today = dumb.instantiate()
		$grid.add_child(today)
	#if (timeDic['year'] % 4 == 0) && timeDic['month'] == 2:
		#for i in 29:
			#var today = day.instantiate()
			#today.day = i + 1
			#today.month = timeDic['month']
			#today.year = timeDic['year']
			#var time = str(today.year) + '-' + str(today.month) + '-' + str(today.day)
			##if global.calendarDic.has(Time.get_unix_time_from_datetime_string(time)):
				##var data = global.calendarDic[Time.get_unix_time_from_datetime_string(time)]
				##today.get_node('background').modulate = data[0]
				##today.text = data[1]
			#if Time.get_unix_time_from_datetime_string(time) == Time.get_unix_time_from_datetime_string(Time.get_date_string_from_system()):
				#today.get_child(1).visible = true
##			printt(time, Time.get_date_string_from_system())
##			printt(today.day, today.month,today.year)
			#$grid.add_child(today)
	#else:
#		printt(months[monthList[timeDic['month'] - 1]]) 
	for i in months[monthList[timeDic['month'] - 1]]:
		var today = day.instantiate()
		today.day = i + 1
		today.month = timeDic['month']
		today.year = timeDic['year']
		var time = str(today.year) + '-' + str(today.month) + '-' + str(today.day)
		#if global.calendarDic.has(Time.get_unix_time_from_datetime_string(time)):
			#var data = global.calendarDic[Time.get_unix_time_from_datetime_string(time)]
			#today.get_node('background').modulate = data[0]
			#today.text = data[1]
		if Time.get_unix_time_from_datetime_string(time) == Time.get_unix_time_from_datetime_string(Time.get_date_string_from_system()):
			today.get_child(1).visible = true
#			printt(time, Time.get_date_string_from_system())
#			printt(today.day, today.month,today.year)
		#today.setprogress()
		$grid.add_child(today)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

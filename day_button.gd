extends Button

var day = 0
var month = 0
var year = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = str(day)
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	#global.selectedDay = str(year) + '-' + str(month) + '-' + str(day)
	#print(global.selectedDay)
	get_tree().change_scene_to_file("res://day_editor.tscn")

func setprogress():
	print(self.size)
	$backgroundratio.position.y += (100-99)#self.size.y * .01
	print($backgroundratio.position.y)

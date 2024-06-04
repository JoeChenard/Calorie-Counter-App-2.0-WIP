extends Control

var result
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in 200:
		%searchResults.add_item('wowowow: ' + str(i))
	
	#NOTIFICATION_WM_GO_BACK_REQUEST
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _notification(what):
	#if what != 17:
		#print(what)
		#$debug.text = str(what)
	if what == 1007:
		if $searchPanel.visible:
			$AnimationPlayer.play('searchDisable')
		#$debugButton.visible = not $debugButton.visible




func _on_button_pressed():
	$AnimationPlayer.play('searchEnable')
	#get_tree().change_scene_to_file("res://month_viewer.tscn")

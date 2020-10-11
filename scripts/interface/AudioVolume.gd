extends Control

var start
var menu
 
func _ready():
	start = $VBAudio/HBButtons/Start
	menu = $VBAudio/HBButtons/Menu
	
	SoundManager.fade_in_music("Menu")
	set_buttons_disabled(false)
	start.grab_focus()

func on_start_send_scene(scene):
	SoundManager.fade_out_music("Menu")
	set_buttons_disabled(true)
	Global.change_scene(scene)

func on_menu_send_scene(scene):
	SoundManager.fade_in_music("Menu")
	set_buttons_disabled(true)
	Global.change_scene(scene)
	

func set_buttons_disabled(value:bool):
	start.set_deferred("disabled",value)
	menu.set_deferred("disabled",value)


func on_audiovolume_tree_exited():
	Global.save_option()

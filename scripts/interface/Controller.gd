extends Control

var menu 
var back
func _ready():
	menu = $VBController/HBButtons/Menu
	back = $VBController/HBButtons/Back
	menu.grab_focus()
	
	SoundManager.fade_in_music("Menu")
	set_buttons_disabled(false)
	
func set_buttons_disabled(value:bool):
	menu.set_deferred("disabled",value)
	back.set_deferred("disabled",value)
	
func on_menu_send_scene(scene):
	SoundManager.fade_out_music("Menu")
	set_buttons_disabled(true)
	Global.change_scene(scene)

func on_back_send_scene(scene):
	SoundManager.fade_out_music("Menu")
	set_buttons_disabled(true)
	Global.change_scene(scene)

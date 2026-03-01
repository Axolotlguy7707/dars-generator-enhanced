# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/godot-4-responsive-ui-plugin
@tool
@icon('safe_area_control.svg')
extends Control
class_name SafeAreaControl


func _process(_delta:float) -> void:
	# i found no way to get the parent window,
	# so let's assume it's always the main window
	var parent_window : Window = get_tree().get_root()
	
	var is_fullscreen = \
		parent_window.get_mode() == Window.MODE_FULLSCREEN or \
		parent_window.get_mode() == Window.MODE_EXCLUSIVE_FULLSCREEN
	
	if Engine.is_editor_hint() or (not is_fullscreen):
		set_position(get_parent_control().get_position())
		set_size(get_parent_area_size())
	if (not Engine.is_editor_hint()) and is_fullscreen:
		set_position(DisplayServer.get_display_safe_area().position)
		set_size(DisplayServer.get_display_safe_area().size)

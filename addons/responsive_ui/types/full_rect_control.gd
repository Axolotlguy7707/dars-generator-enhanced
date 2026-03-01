# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/godot-4-responsive-ui-plugin
@tool
@icon('full_rect_control.svg')
extends Control
class_name FullRectControl


func _process(_delta:float) -> void:
	if Engine.is_editor_hint():
		set_anchors_preset(Control.PRESET_FULL_RECT)
	else:
		set_script(null)

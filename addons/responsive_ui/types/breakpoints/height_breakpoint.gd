# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/godot-4-responsive-ui-plugin
@icon('height_breakpoint.svg')
extends Control
class_name HeightBreakpoint


@export_range(0, 2147483647) var min_height : int = 0
@export_range(0, 2147483647) var max_height : int = 2147183647


func _process(_delta:float) -> void:
	if (
		get_parent_area_size().y < min_height or
		get_parent_area_size().y > max_height
	):
		set_visible(false)
	else:
		set_visible(true)

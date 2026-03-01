# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/godot-4-responsive-ui-plugin
@icon('width_breakpoint.svg')
extends Control
class_name WidthBreakpoint


@export_range(0, 2147483647) var min_width : int = 0
@export_range(0, 2147483647) var max_width : int = 2147483647


func _process(_delta:float) -> void:
	if (
		get_parent_area_size().x < min_width or
		get_parent_area_size().x > max_width
	):
		set_visible(false)
	else:
		set_visible(true)

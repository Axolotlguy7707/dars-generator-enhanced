# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/godot-4-responsive-ui-plugin
@icon('orientation_breakpoint.svg')
extends Control
class_name OrientationBreakpoint


@export var allow_square : bool = true
@export var allow_portrait : bool = true
@export var allow_landscape : bool = true


func _process(_delta:float) -> void:
	if get_parent_area_size().x == get_parent_area_size().y:
		set_visible(allow_square)
	elif get_parent_area_size().x < get_parent_area_size().y:
		set_visible(allow_portrait)
	elif get_parent_area_size().x > get_parent_area_size().y:
		set_visible(allow_landscape)

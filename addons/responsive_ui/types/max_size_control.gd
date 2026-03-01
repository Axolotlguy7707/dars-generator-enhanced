# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/godot-4-responsive-ui-plugin
@tool
@icon('max_size_contol.svg')
extends Control
class_name MaxSizeControl


@export var restrict_width : bool = true
@export_range(0, 2147483647) var max_width : int = 256
@export var restrict_height : bool = true
@export_range(0, 2147483647) var max_height : int = 256


func _process(_delta:float) -> void:
	if restrict_width and restrict_height:
		set_size(get_parent_area_size())
	elif restrict_width and (not restrict_height):
		set_size(Vector2(
			min(get_parent_area_size().x, max_width),
			get_parent_area_size().y
		))
	elif (not restrict_width) and restrict_height:
		set_size(Vector2(
			get_parent_area_size().x,
			min(get_parent_area_size().y, max_height)
		))
	elif not (restrict_width and restrict_height):
		set_size(
			min(get_parent_area_size(), Vector2(max_width, max_height))
		)

# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/godot-4-responsive-ui-plugin
@tool
@icon('scale_control.svg')
extends Control
class_name ScaleControl


@export var scale_factor : float = 1


func _process(_delta:float) -> void:
	if not Engine.is_editor_hint():
		set_position(Vector2.ZERO)
		set_size(get_parent_area_size() / scale_factor)
		set_scale(Vector2.ONE * scale_factor)
	if Engine.is_editor_hint():
		set_position(Vector2.ZERO)
		set_size(get_parent_area_size())

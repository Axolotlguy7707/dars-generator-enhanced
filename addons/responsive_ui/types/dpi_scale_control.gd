# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/godot-4-responsive-ui-plugin
@tool
@icon('dpi_scale_control.svg')
extends Control
class_name DPIScaleControl


var baseline_dpi : int = 72


func _ready() -> void:
	if not Engine.is_editor_hint():
		match OS.get_name():
			'Android':
				baseline_dpi = 160
			'Web':
				baseline_dpi = 96
			'Linux':
				baseline_dpi = 96
			'Windows':
				baseline_dpi = 96
			'UWP':
				baseline_dpi = 96
			_:
				baseline_dpi = 72


func _process(_delta:float) -> void:
	if not Engine.is_editor_hint():
		set_position(Vector2.ZERO)
		set_size(
			get_parent_area_size() / DisplayServer.screen_get_dpi() *
			baseline_dpi
		)
		set_scale(
			Vector2.ONE / baseline_dpi * DisplayServer.screen_get_dpi()
		)
	if Engine.is_editor_hint():
		set_position(Vector2.ZERO)
		set_size(get_parent_area_size())

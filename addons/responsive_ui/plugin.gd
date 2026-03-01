# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/godot-4-responsive-ui-plugin
@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type( 'FullRectControl', 'Control',
		preload('types/full_rect_control.gd'),
		preload('types/full_rect_control.svg')
	)
	add_custom_type( 'SafeAreaControl', 'Control',
		preload('types/safe_area_control.gd'),
		preload('types/safe_area_control.svg')
	)
	add_custom_type( 'DPIScaleControl', 'Control',
		preload('types/dpi_scale_control.gd'),
		preload('types/dpi_scale_control.svg')
	)
	add_custom_type( 'ScaleControl', 'Control',
		preload('types/scale_control.gd'),
		preload('types/scale_control.svg')
	)
	add_custom_type( 'MaxSizeControl', 'Control',
		preload('types/max_size_control.gd'),
		preload('types/max_size_control.svg')
	)
	
	add_custom_type( 'WidthBreakpoint', 'Control',
		preload('types/breakpoints/width_breakpoint.gd'),
		preload('types/breakpoints/width_breakpoint.svg')
	)
	add_custom_type( 'HeightBreakpoint', 'Control',
		preload('types/breakpoints/height_breakpoint.gd'),
		preload('types/breakpoints/height_breakpoint.svg')
	)
	add_custom_type( 'OrientationBreakpoint', 'Control',
		preload('types/breakpoints/orientation_breakpoint.gd'),
		preload('types/breakpoints/orientation_breakpoint.svg')
	)


func _exit_tree():
	remove_custom_type('FullRectControl')
	remove_custom_type('SafeAreaControl')
	remove_custom_type('DPIScaleControl')
	remove_custom_type('ScaleControl')
	remove_custom_type('MaxSizeControl')
	
	remove_custom_type('WidthBreakpoint')
	remove_custom_type('HeightBreakpoint')
	remove_custom_type('OrientationBreakpoint')

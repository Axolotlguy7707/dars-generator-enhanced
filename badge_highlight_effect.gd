# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/dars-generator
@tool
extends RichTextEffect
class_name BadgeHighlightEffect


var bbcode : String = 'highlight'


func _process_custom_fx(char_fx: CharFXTransform) -> bool:
	char_fx.set_color('#000000')
	return true

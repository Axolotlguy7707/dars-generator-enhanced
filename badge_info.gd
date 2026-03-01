# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/dars-generator
extends Node


func get_age_rating() -> int:
	var out: int
	
	if FileManager.get_value('age_rating_override', 'eu_style') > 0:
		out = FileManager.get_value('age_rating_override', 'eu_style')
	else:
		out = 1
		match FileManager.get_value('age_rating_criteria', 'humor'):
			1:
				out = max(out, 2)
			2:
				out = max(out, 3)
			3:
				out = max(out, 5)
		match FileManager.get_value('age_rating_criteria', 'language'):
			1:
				out = max(out, 3)
			2:
				out = max(out, 4)
			3:
				out = max(out, 4)
			4:
				out = max(out, 5)
		match FileManager.get_value(
			'age_rating_criteria', 'violence'
		):
			1:
				out = max(out, 2)
			2:
				out = max(out, 3)
			3:
				out = max(out, 4)
			4:
				out = max(out, 5)
		match FileManager.get_value(
			'age_rating_criteria', 'drugs'
		):
			1:
				out = max(out, 4)
			2:
				out = max(out, 5)
		match FileManager.get_value(
			'age_rating_criteria', 'fear'
		):
			1:
				out = max(out, 2)
			2:
				out = max(out, 3)
			3:
				out = max(out, 4)
		match FileManager.get_value(
			'age_rating_criteria', 'sexual'
		):
			1:
				out = max(out, 3)
			2:
				out = max(out, 4)
			3:
				out = max(out, 4)
			4:
				out = max(out, 5)
			5:
				out = max(out, 5)
		match FileManager.get_value(
			'age_rating_criteria', 'gore'
		):
			1:
				out = max(out, 3)
			2:
				out = max(out, 4)
			3:
				out = max(out, 5)
		match FileManager.get_value(
			'age_rating_criteria', 'gambling'
		):
			1:
				out = max(out, 5)
		match FileManager.get_value(
			'age_rating_criteria', 'flashing_lights'
		):
			1:
				out = max(out, 3)
		match FileManager.get_value(
			'age_rating_criteria', 'discrimination'
		):
			1:
				out = max(out, 5)
		match FileManager.get_value(
			'age_rating_criteria', 'ads'
		):
			1:
				out = max(out, 2)
		match FileManager.get_value(
			'age_rating_criteria', 'player_made_content'
		):
			1:
				out = max(out, 3)
		match FileManager.get_value(
			'age_rating_criteria', 'online_multiplayer'
		):
			1:
				out = max(out, 3)
		match FileManager.get_value(
			'age_rating_criteria', 'purchases'
		):
			1:
				out = max(out, 0)
			2:
				out = max(out, 0)
			3:
				out = max(out, 0)
	
	match out:
		1:
			out = 3
		2:
			out = 6
		3:
			out = 13
		4:
			out = 16
		5:
			out = 18
	
	return out


func get_age_rating_text(strip_bbcode: bool = false) -> String:
	var dars_version : String = String.num_int64(
		FileManager.get_value('dars_version', 'year')
	)
	if not FileManager.get_value('dars_version', 'revision') == 0:
		dars_version += '.' + String.num_int64(
			FileManager.get_value('dars_version', 'revision')
		)
	if not FileManager.get_value('dars_version', 'status') == 'stable':
		dars_version += '.' + FileManager.get_value(
			'dars_version', 'status'
		)
	
	var out = tr('age-rating-text').format({
		'age_rating': String.num_int64(BadgeInfo.get_age_rating()),
		'game_name': FileManager.get_value('extra', 'game_name'),
		'rated_by': FileManager.get_value('extra', 'rated_by'),
		'dars_version': dars_version,
	})
	
	if strip_bbcode:
		var regex: RegEx = RegEx.new()
		regex.compile('\\[.*?\\]')
		out = regex.sub(out, '', true)
	
	return out


func get_content_descriptor(descriptor: String) -> String:
	var intensity: int = FileManager.get_value(
		'age_rating_criteria',
		descriptor.replace(' ', '_')
	)
	if intensity > 0:
		return ( 'age-rating-criteria_' +
			descriptor.replace(' ', '-') + '_' + \
			String.num_int64(intensity)
		)
	else:
		return ''


var _content_descriptors_list: String = ''
func get_content_descriptors_list(bullet: String = '• ') -> String:
	_content_descriptors_list = ''
	
	var add_list_item: Callable = func(descriptor: String) -> void:
		if FileManager.get_value( 'age_rating_criteria',
			descriptor.replace(' ', '_')
		) > 0:
			_content_descriptors_list += '\n' + bullet + \
					tr(get_content_descriptor(descriptor))
	
	add_list_item.call('flashing lights')
	add_list_item.call('purchases')
	add_list_item.call('ads')
	add_list_item.call('player made content')
	add_list_item.call('online multiplayer')
	
	add_list_item.call('humor')
	add_list_item.call('language')
	add_list_item.call('violence')
	add_list_item.call('drugs')
	add_list_item.call('fear')
	add_list_item.call('sexual')
	add_list_item.call('gore')
	add_list_item.call('gambling')
	add_list_item.call('discrimination')
	
	_content_descriptors_list = \
			_content_descriptors_list.trim_prefix('\n')
	
	return _content_descriptors_list

# this script is licensed under MIT license:
# 	https://codeberg.org/sosasees/mit-license/raw/branch/no-year/LICENSE
# source:
# 	https://codeberg.org/sosasees/dars-generator
extends Node


signal file_opened
var dars_file: ConfigFile = new_file()


## set a value inside the current [i]DARS rating[/i] file.[br]
## based off [method ConfigFile.set_value].
func set_value(section: String, key: String, value) -> void:
	dars_file.set_value(section, key, value)


## get a value inside the current [i]DARS rating[/i] file.[br]
## based off [method ConfigFile.get_value].[br]
## [member default] is set to 0,
## just to avoid raising an error.
func get_value(section: String, key: String):
	return dars_file.get_value(section, key, 0)


## create a new [i]DARS rating[i] file
## with every value set to the default.
func new_file() -> ConfigFile:
	var file: ConfigFile = ConfigFile.new()
	
	file.set_value( 'dars_version', 'year',
		ProjectSettings.get_setting(
			'application/config/version/dars'
		).year
	)
	file.set_value( 'dars_version', 'revision',
		ProjectSettings.get_setting(
			'application/config/version/dars'
		).revision
	)
	file.set_value( 'dars_version', 'status',
		ProjectSettings.get_setting(
			'application/config/version/dars'
		).status
	)
	
	file.set_value('age_rating_criteria', 'humor', 0)
	file.set_value('age_rating_criteria', 'language', 0)
	file.set_value('age_rating_criteria', 'violence', 0)
	file.set_value('age_rating_criteria', 'drugs', 0)
	file.set_value('age_rating_criteria', 'fear', 0)
	file.set_value('age_rating_criteria', 'sexual', 0)
	file.set_value('age_rating_criteria', 'gore', 0)
	file.set_value('age_rating_criteria', 'gambling', 0)
	file.set_value('age_rating_criteria', 'flashing_lights', 0)
	file.set_value('age_rating_criteria', 'discrimination', 0)
	file.set_value('age_rating_criteria', 'ads', 0)
	file.set_value('age_rating_criteria', 'player_made_content', 0)
	file.set_value('age_rating_criteria', 'online_multiplayer', 0)
	file.set_value('age_rating_criteria', 'purchases', 0)
	
	file.set_value('age_rating_override', 'eu_style', 0)
	
	file.set_value('extra', 'game_name', '')
	file.set_value('extra', 'rated_by', '')
	
	dars_file = file
	return file


## open a [i]DARS rating[/i] file.
func open_file(path: String) -> void:
	dars_file.load(path)


## open a new [i]DARS rating[/i] file
## with all values set to default.
func open_new() -> void:
	dars_file = new_file()


## save the opened [i]DARS rating[/i] file.
func save_file(save_path: String) -> Error:
	return dars_file.save(save_path)

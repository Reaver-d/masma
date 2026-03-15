extends Button





func _on_pressed() -> void:
	var button_text = self.text
	
	data.character_class = button_text
	match button_text:
		"МАГ":
			data.max_hp = 30
			data.current_hp = data.max_hp
		"ВОИН":
			data.max_hp = 60
			data.current_hp = data.max_hp
		"СИР РОГУЕ":
			data.max_hp = 45
			data.current_hp = data.max_hp
	
	get_tree().change_scene_to_file("res://scenes/map/map.tscn")

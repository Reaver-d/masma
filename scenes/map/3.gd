extends Button




func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/test/test.tscn")
	fight.enemys = "shadow"
	fight.number += 1

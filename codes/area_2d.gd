extends Area2D
var d
@onready var area		: Area2D = $"."




func _on_area_entered(area: Area2D) -> void:
	print('yes')

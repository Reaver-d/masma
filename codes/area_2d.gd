extends Area2D
var d
var areas
@onready var area		: Area2D = $"."
@onready var mc: AnimatedSprite2D = $"../mc"
@onready var enemy: AnimatedSprite2D = $"../enemy"
@onready var labels: Node = $"../labels"


func _on_area_entered(area: Area2D) -> void:
	areas = area.get_overlapping_bodies()[0]
	if labels.current_mana != 0:
		areas.after_area = true

func _on_area_exited(area: Area2D) -> void:
	if not areas.visible:
		if areas.type == "attack": 
			labels.enemy_hp -= areas.damage
		else:
			data.temporary_hp += areas.defend
		labels.current_mana -= areas.mana
	areas = area.get_overlapping_bodies()[0]
	areas.after_area = false

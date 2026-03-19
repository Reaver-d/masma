extends Area2D
var d
var areas
@onready var area		: Area2D = $"."
@onready var labels: Node = $"../labels"
@onready var main: Node2D = $".."
var cards_played = []
var card_name


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
		card_name = ""
		for j in str(areas):
			if j != "_":
				card_name += j
			else:
				break
		main.discard_pile.append(data.all_cards[card_name])
	areas = area.get_overlapping_bodies()[0]
	areas.after_area = false

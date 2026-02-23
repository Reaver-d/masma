extends Area2D
var d
var areas
@onready var area		: Area2D = $"."
<<<<<<< Updated upstream
@onready var mc: AnimatedSprite2D = $"../mc"
@onready var enemy: AnimatedSprite2D = $"../enemy"
@onready var labels: Node = $"../labels"

=======
var areas
@onready var labels: Node = $"../labels"
>>>>>>> Stashed changes



func _on_area_entered(area: Area2D) -> void:
	areas = area.get_overlapping_bodies()[0]
<<<<<<< Updated upstream
	areas.after_area = true


func _on_area_exited(area: Area2D) -> void:
	if not areas.visible:
		labels.health_enemy -= areas.damage
		labels.current_mana -= areas.mana
	areas = area.get_overlapping_bodies()[0]
	areas.after_area = false
=======
	areas.entered = true

func _on_area_exited(area: Area2D) -> void:
	if not areas.visible:
		labels.enemy_hp -= areas.damage
		labels.current_mana -= areas.mana
>>>>>>> Stashed changes

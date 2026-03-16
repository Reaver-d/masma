extends Button
@onready var cards: Node = $"../cards"
var childs
var enemy_dmg
@onready var labels: Node = $"../labels"


func _ready() -> void:
	enemy_dmg = get_node("../enemy").get_child(0).damage


func _on_pressed() -> void:
	childs = cards.get_children()
	for i in range(len(childs)):
		if childs[i].visible == false:
			childs[i].visible = true
			childs[i].clickable = true
	if data.temporary_hp != 0:
		data.temporary_hp -= enemy_dmg
	else:
		data.current_hp -= enemy_dmg
	if data.temporary_hp < 0:
		data.current_hp += data.temporary_hp
		data.temporary_hp = 0
	labels.current_mana = labels.max_mana

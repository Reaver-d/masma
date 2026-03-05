extends Button
@onready var cards: Node = $"../cards"
var childs
var enemy_dmg
@onready var labels: Node = $"../labels"


func _ready() -> void:
	enemy_dmg = get_node("../enemy").dmg



func _on_pressed() -> void:
	childs = cards.get_children()
	for i in range(len(childs)):
		if childs[i].visible == false:
			childs[i].visible = true
			childs[i].clickable = true
	get_node("../mc").hp -= enemy_dmg
	labels.current_mana = labels.max_mana

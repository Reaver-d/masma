extends Button
@onready var cards: Node = $"../cards"
var childs
var enemy_dmg
@onready var labels: Node = $"../labels"
@onready var main: Node2D = $".."
var card_name


func _ready() -> void:
	enemy_dmg = get_node("../enemy").get_child(0).damage


func _on_pressed() -> void:
	childs = cards.get_children()
	for i in range(len(childs)):
		card_name = ""
		for j in str(childs[i]):
			if j != "_":
				card_name += j
			else:
				break
		main.discard_pile.append(data.all_cards[card_name])
		childs[i].queue_free()
	if data.temporary_hp != 0:
		data.temporary_hp -= enemy_dmg
	else:
		data.current_hp -= enemy_dmg
	if data.temporary_hp < 0:
		data.current_hp += data.temporary_hp
		data.temporary_hp = 0
	labels.current_mana = labels.max_mana
	main.card_draw(4)

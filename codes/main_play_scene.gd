extends Node2D
var xd = Vector2(350, 551)

func _ready() -> void:
	for i in range(len(data.cards)):
		var card = data.cards[i].instantiate()
		get_node("cards").add_child(card)
		card.position[0] = 250 + i * 150
		card.position[1] = 551
	data.temporary_hp = 0

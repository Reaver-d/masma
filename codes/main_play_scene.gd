extends Node2D
var enemy

func _enter_tree() -> void:
	for i in range(len(data.cards)):
		var card = data.cards[i].instantiate()
		get_node("cards").add_child(card)
		card.position[0] = 250 + i * 150
		card.position[1] = 551
	data.temporary_hp = 0
	enemy = load("res://scenes/enemys/{enemy}.tscn".format({enemy = fight.enemys})).instantiate()
	enemy.position[0] = 950
	enemy.position[1] = 250
	get_node("enemy").add_child(enemy)

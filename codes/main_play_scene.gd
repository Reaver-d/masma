extends Node2D
var enemy
var draw_pile = []
var discard_pile = []
var named

func card_draw(a):
	for i in range(a):
		if len(draw_pile) == 0:
			for j in range(len(discard_pile)):
				draw_pile.append(discard_pile[0])
				discard_pile.pop_front()
		draw_pile.shuffle()
		var card = draw_pile[0].instantiate()
		named = ""
		for j in str(draw_pile[0]).right(-20):
			if j != "/":
				named += j
			else:
				break
		get_node("cards").add_child(card)
		card.name = named + "/" + str(i)
		card.position[0] = 250 + i * 150
		card.position[1] = 551
		draw_pile.pop_front()

func _enter_tree() -> void:
	for i in range(len(data.cards)):
		draw_pile.append(data.cards[i])
	card_draw(4)
	data.temporary_hp = 0
	enemy = load("res://scenes/enemys/{enemy}.tscn".format({enemy = fight.enemys})).instantiate()
	enemy.position[0] = 950
	enemy.position[1] = 250
	get_node("enemy").add_child(enemy)

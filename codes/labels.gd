extends Node
@onready var label_mana: Label = $mana
@onready var label_enemy_hp: Label = $enemy_hp
var max_mana
var current_mana
var mc_hp
var enemy_hp
var temporary_hp
@onready var label_player_hp: Label = $player_hp
@onready var cards: Label = $cards


func _ready() -> void:
	max_mana = data.mana
	current_mana = data.mana
	enemy_hp = get_node("../enemy").get_child(0).hp

func _process(delta: float) -> void:
	cards.text = str(len(get_node("..").draw_pile))
	temporary_hp = data.temporary_hp
	mc_hp = data.current_hp
	label_mana.text = "{current_mana}/{max_mana}".format({current_mana = current_mana, max_mana = max_mana})
	if temporary_hp != 0:
		label_player_hp.text = "{mc_hp} + {temporary_hp}".format({mc_hp = mc_hp, temporary_hp = temporary_hp})
	else:
		label_player_hp.text = "{mc_hp}".format({mc_hp = mc_hp})
	label_enemy_hp.text = "{enemy_hp}".format({enemy_hp = enemy_hp})
	if enemy_hp <= 0:
		get_tree().change_scene_to_file("res://scenes/map/map.tscn")
	if mc_hp <= 0:
		get_tree().quit()
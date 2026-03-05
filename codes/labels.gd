extends Node
@onready var label_mana: Label = $mana
@onready var label_enemy_hp: Label = $enemy_hp
var max_mana
var current_mana
var enemy_hp
var mc_hp
@onready var label_player_hp: Label = $player_hp


func _ready() -> void:
	max_mana = get_node("../mc").mana
	current_mana = get_node("../mc").mana
	enemy_hp = get_node("../enemy").hp


func _process(delta: float) -> void:
	mc_hp = get_node("../mc").hp
	label_mana.text = "{current_mana}/{max_mana}".format({current_mana = current_mana, max_mana = max_mana})
	label_player_hp.text = "{mc_hp}".format({mc_hp = mc_hp})
	label_enemy_hp.text = "{enemy_hp}".format({enemy_hp = enemy_hp})
	if enemy_hp <= 0:
		get_tree().change_scene_to_file("res://scenes/main_menu/main_menu.tscn")

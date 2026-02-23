extends Node
<<<<<<< Updated upstream
var current_mana = 3
var max_mana = 3
@onready var enemy_hp: Label = $enemy_hp
@onready var player_hp: Label = $player_hp
@onready var mana: Label = $mana
var health_mc
var health_enemy

func _ready() -> void:
	health_mc = get_node("../mc").health
	health_enemy = get_node("../enemy").health

func _process(delta: float) -> void:
	mana.text = "{current_mana}/{max_mana} mana".format({"current_mana" : current_mana, 'max_mana' : max_mana})
	player_hp.text = "{health_mc}".format({health_mc = health_mc})
	enemy_hp.text = "{health_enemy}".format({health_enemy = health_enemy})
=======
@onready var label_mana: Label = $mana
@onready var label_enemy_hp: Label = $enemy_hp
@onready var label_mc_hp: Label = $mc_hp
var max_mana
var current_mana
var enemy_hp
var mc_hp


func _ready() -> void:
	max_mana = get_node("../mc").mana
	current_mana = get_node("../mc").mana
	enemy_hp = get_node("../enemy").hp
	mc_hp = get_node("../mc").hp


func _process(delta: float) -> void:
	label_mana.text = "{current_mana}/{max_mana}".format({current_mana = current_mana, max_mana = max_mana})
	label_enemy_hp.text = "{enemy_hp}".format({enemy_hp = enemy_hp})
	label_mc_hp.text = "{mc_hp}".format({mc_hp = mc_hp})
>>>>>>> Stashed changes

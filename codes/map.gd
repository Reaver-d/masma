extends Node2D
@onready var _2: Button = $"2"
@onready var _3: Button = $"3"
@onready var _4: Button = $"4"
@onready var _5: Button = $elite
@onready var _1: Button = $"1"



func _process(delta: float) -> void:
	if fight.number != 0:
		_1.disabled = true
	else:
		_1.disabled = false
	if fight.number != 1:
		_2.disabled = true
	else:
		_2.disabled = false
	if fight.number != 2:
		_3.disabled = true
	else:
		_3.disabled = false
	if fight.number != 3:
		_4.disabled = true
	else:
		_4.disabled = false
	if fight.number != 4:
		_5.disabled = true
	else:
		_5.disabled = false

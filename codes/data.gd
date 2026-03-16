extends Node

var temporary_hp = 0
var max_hp = 30
var current_hp = 30
var mana = 3
var cards = [load("res://scenes/cards/attack/attack.tscn"), load("res://scenes/cards/attack/attack.tscn"), load("res://scenes/cards/defend/defend.tscn"), load("res://scenes/cards/defend/defend.tscn")]
var character 

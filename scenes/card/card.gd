extends Area2D
var dragging = false
var click_radius = 100 # Size of the sprite.
@onready var static_body_2d: CollisionShape2D = $CollisionShape2D
@onready var area_2d: Area2D = $"."
@onready var picsart_260222134126098: Sprite2D = $Picsart260222134126098


func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if (event.position - picsart_260222134126098.position).length() < click_radius:
			if not dragging and event.pressed:
				dragging = true
				print('yes')
		if dragging and not event.pressed:
			dragging = false

	if event is InputEventMouseMotion and dragging:
		static_body_2d.position = event.position


func _on_area_entered(area: Area2D) -> void:
	print(1)

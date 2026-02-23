extends StaticBody2D
@onready var static_body_2d: StaticBody2D = $"."
var dragging = false
var click_radius = 100 # Size of the sprite.
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D


func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if (event.position - static_body_2d.position).length() < click_radius:
			if not dragging and event.pressed:
				dragging = true
		if dragging and not event.pressed:
			dragging = false

	if event is InputEventMouseMotion and dragging:
		static_body_2d.position = event.position

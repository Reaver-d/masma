extends StaticBody2D
@onready var static_body_2d: StaticBody2D = $"."
var clickable = true
var dragging = false
var click_radius = 100 # Size of the sprite.
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
<<<<<<< Updated upstream
var start_location
var after_area = false
var damage = 1
var mana = 1
=======
var entered = false
var start_position
var clickable = true
var mana = 1
var damage = 1
>>>>>>> Stashed changes


func _input(event):
	if clickable:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			if (event.position - static_body_2d.position).length() < click_radius:
				if not dragging and event.pressed:
<<<<<<< Updated upstream
					dragging = true
					start_location = static_body_2d.position
			if dragging and not event.pressed:
				dragging = false
				if after_area:
					static_body_2d.visible = false
					clickable = false
				static_body_2d.position = start_location

		if event is InputEventMouseMotion and dragging:
			static_body_2d.position = event.position


func _on_hidden() -> void:
	pass
=======
					start_position = static_body_2d.position
					dragging = true
			if dragging and not event.pressed:
				dragging = false
				if entered:
					static_body_2d.visible = false
					clickable = false
				static_body_2d.position = start_position

		if event is InputEventMouseMotion and dragging:
			static_body_2d.position = event.position
>>>>>>> Stashed changes

extends StaticBody2D
@onready var static_body_2d: StaticBody2D = $"."
var clickable = true
var dragging = false
var click_radius = 70 # Size of the sprite.
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
var start_location
var after_area = false
var damage = 4
var mana = 1
var entered = false
var type = "attack"


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if clickable:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				if not dragging and event.pressed:
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

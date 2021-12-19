extends Character
class_name Player


export (int) var move_speed = 200
export (int) var jump_power = 500


func _get_movement(velocity: Vector2):
	if Input.is_action_pressed("move_left"):
		velocity.x -= move_speed
	if Input.is_action_pressed("move_right"):
		velocity.x += move_speed
	if Input.is_action_pressed("move_jump") and is_on_floor():
		velocity.y -= jump_power
	return velocity

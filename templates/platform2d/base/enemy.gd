extends Character
class_name Enemy


var direction := 1 - 2*(randi() % 2)


func _get_movement(velocity: Vector2):
	velocity.x += direction * 100
	return velocity

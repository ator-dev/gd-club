extends KinematicBody2D
class_name Character


const GRAVITY := 1200

var _velocity: Vector2


func _physics_process(delta):
	_velocity.x = 0
	_velocity = _get_movement(_velocity)
	_velocity.y += GRAVITY * delta
	_velocity = move_and_slide(_velocity, Vector2.UP)


func _get_movement(_vel: Vector2) -> Vector2:
	return _vel

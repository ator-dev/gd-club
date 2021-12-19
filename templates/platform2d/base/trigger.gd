extends Area2D
class_name Trigger


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _on_Area2D_body_entered(body):
	if body is Player:
		_on_trigger()


func _on_trigger():
	pass

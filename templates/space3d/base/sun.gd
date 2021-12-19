extends Node


export (float) var orbit_speed = 1.0

onready var orbit := $Orbit


func _ready():
	pass


func _process(delta):
	orbit.rotation.y += orbit_speed

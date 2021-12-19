extends Light2D


export (bool) var flicker_enabled
export (float) var flicker_delay = 1.0
export (int) var flicker_max_pulses = 1

var pulses_left := 0

onready var flicker := $Flicker
onready var pulse := $Pulse


func _ready():
	if flicker_enabled:
		_on_Flicker_timeout()


func _on_Flicker_timeout():
	pulse.play("pulse")
	pulses_left = randi() % flicker_max_pulses


func _on_Pulse_animation_finished(_anim_name):
	if pulses_left == 0:
		flicker.wait_time = rand_range(flicker_delay / 2, flicker_delay * 2)
		flicker.start()
	else:
		pulses_left -= 1
		pulse.play("pulse")

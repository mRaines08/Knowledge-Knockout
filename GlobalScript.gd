extends Node
var count = 0
var level = 0

var level_time := 0.0  # Time in seconds
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if level > 0:
		level_time += delta

func reset_level_time():
	level_time = 0.0

func get_formatted_time() -> String:
	var minutes = int(level_time) / 60
	var seconds = int(level_time) % 60
	return "%d:%02d" % [minutes, seconds]

extends Node2D

@onready var button2 = $"Level 2"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")

extends Node2D

func _ready() -> void:
	var formatted_time = GlobalScript.get_formatted_time()
	$Time.text = "Time: " + formatted_time
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Test.text = "Knowledge Bottles: " + str(GlobalScript.count) + "/5"


func _on_back_to_menu_pressed() -> void:
	GlobalScript.count = 0
	get_tree().change_scene_to_file("res://scenes/level_screen.tscn")


func _on_next_level_pressed() -> void:
	GlobalScript.count = 0
	get_tree().change_scene_to_file("res://scenes/level2.tscn")


func _on_replay_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")

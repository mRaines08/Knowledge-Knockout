extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		if GlobalScript.level == 1:
			get_tree().change_scene_to_file("res://scenes/end_of_level_1.tscn")
		if GlobalScript.level == 2:
			get_tree().change_scene_to_file("res://scenes/end_of_level_2.tscn")
		if GlobalScript.level == 3:
			get_tree().change_scene_to_file("res://scenes/end_of_level_3.tscn")

extends Area2D

#@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	#print("You Died!")
	#timer.start()
	get_tree().change_scene_to_file("res://death_screen.tscn")
	

#func _on_timer_timeout() -> void:
	#get_tree().reload_current_scene()

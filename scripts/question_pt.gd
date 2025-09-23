extends CanvasLayer

#func _ready() -> void:
	
	
	
	#checkpoint_manager = get_parent().get_node("../CheckpointManager")
	#player = get_parent().get_node("../Player")
	

#func killPlayer():
	#player.position = checkpoint_manager.last_location

#func _on_button_pressed() -> void: #No
	#killPlayer()


func _on_button_2_pressed() -> void: #Yes
	get_tree().quit()

extends Control
#@onready var question_canvas: CanvasLayer = $".."

#var checkpoint_manager
#var player

#func _ready() -> void:
	#checkpoint_manager = get_parent().get_node("CheckpointManager")
	#player = get_parent().get_node("Player")
	
#func _on__pressed() -> void:
	#get_tree().pause = false
	#player.position = checkpoint_manager.last_location
	#question_canvas.visible = false

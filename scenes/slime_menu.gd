extends Control

var checkpoint_manager
var player
var slime




func _ready() -> void:
	
	checkpoint_manager = get_node("../../../../CheckpointManager")
	player = get_node("../../../../Player")
	slime = get_node("../../..")

func _on_resume_pressed() -> void:
	slime.visible = false
	self.visible = false
	Engine.time_scale = 1


func _on_dye_pressed() -> void:
	enemyKillPlayer()
	self.visible = false
	Engine.time_scale = 1

func enemyKillPlayer():
	player.position = checkpoint_manager.last_location

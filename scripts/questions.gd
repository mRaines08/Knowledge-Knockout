extends Control

var badguy
var checkpoint_manager
var player
@onready var resume: Button = $MarginContainer/VBoxContainer/Resume
@onready var dye: Button = $MarginContainer/VBoxContainer/Dye
@onready var questions: Control = $"."

#@onready var slime: Node2D = $"."

func _ready() -> void:
	checkpoint_manager = get_parent().get_node("../../../CheckpointManager")
	player = get_parent().get_node("../../../Player")
	badguy = get_parent().get_node("../..")

func _on_resume_pressed() -> void:
	questions.visible = false
	Engine.time_scale = 1
	badguy.visible = false


func _on_dye_pressed() -> void:
	if questions.visible:
			killPlayer()
			questions.visible = false
			Engine.time_scale = 1
			
func killPlayer():
	player.position = checkpoint_manager.last_location

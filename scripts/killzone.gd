extends Area2D

@onready var math_question: CanvasLayer = $"../Player/math_question"
@onready var reading_question: Window = $"../Player/reading_question"

#@onready var timer: Timer = $Timer
var checkpoint_manager
var player
@onready var question_canvas: CanvasLayer = $"../Player/QuestionCanvas"

func _ready() -> void:
	
	
	
	checkpoint_manager = get_parent().get_node("CheckpointManager")
	player = get_parent().get_node("Player")
	
func _on_body_entered(body: Node2D) -> void:
	#print("You Died!")
	#timer.start()
	get_tree().change_scene_to_file("res://death_screen.tscn")
	if body.is_in_group("Player"):
		killPlayer()
	
func killPlayer():
	player.position = checkpoint_manager.last_location
	if !Global.is_math_question:
		math_question.new_math_question()
	else:
		reading_question.visible = true
	
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()

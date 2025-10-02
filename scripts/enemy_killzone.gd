extends Area2D

#@onready var timer: Timer = $Timer
var checkpoint_manager
var player
var pullQ = false

#@onready var slime_menu: Control = $CanvasLayer/SlimeMenu


#@onready var questions: Control = $"."
@onready var slime: Node2D = $".."

#func _ready() -> void:
	
	
	
	#checkpoint_manager = get_parent().get_node("../CheckpointManager")
	#player = get_parent().get_node("../Player")
	#slime = get_parent().get_node("../Slime")

#const Question_pt = preload("res://scenes/question_pt.tscn")


func _on_body_entered(body: Node2D) -> void:

	#print("You Died!")
	#timer.start()
	#get_tree().change_scene_to_file("res://death_screen.tscn")
	if slime.visible:
		if body.is_in_group("Player"):
			Global.enemy_encounter = true
			$math_question.new_math_question()
			Engine.time_scale = 0
	
#func get_q():
	
	#var answer = Question_pt.instance()
	#add_child(answer)
	#get_tree().paused = true
#func killPlayer():
	#player.position = checkpoint_manager.last_location

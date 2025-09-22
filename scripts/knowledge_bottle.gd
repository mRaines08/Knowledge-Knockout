extends Area2D

@onready var score_manager: Node = %"Score Manager"
@onready var player_score: Label = $"../Player/Player Score"
@onready var bottle_score: Label = $"../Score Manager/Bottle Score"

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	score_manager.add_point()
	player_score.text = bottle_score.text
	

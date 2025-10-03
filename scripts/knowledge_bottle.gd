extends Area2D
@onready var pick_up: AnimationPlayer = $PickUp

#@onready var score_manager: Node = %"Score Manager"
#@onready var player_score: Label = $"../Player/Player Score"
#@onready var bottle_score: Label = $"../Score Manager/Bottle Score"

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		pick_up.play("Grab")
	#score_manager.add_point()
		GlobalScript.count += 1
	#GlobalScript.test.text = str(GlobalScript.count)
	#player_score.text = bottle_score.text
	

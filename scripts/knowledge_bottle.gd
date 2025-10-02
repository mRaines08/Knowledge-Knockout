extends Area2D

#@onready var score_manager: Node = %"Score Manager"
#@onready var player_score: Label = $"../Player/Player Score"
#@onready var bottle_score: Label = $"../Score Manager/Bottle Score"
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	#$Pickup.play()
	animation_player.play("PickUp")
	#queue_free()
	
	#score_manager.add_point()
	GlobalScript.count += 1
	#GlobalScript.test.text = str(GlobalScript.count)
	#player_score.text = bottle_score.text
	

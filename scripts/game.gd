extends Node2D
# Called when the node enters the scene tree for the first time.
@onready var player_score: Label = $"Player/Player Score"
@onready var bottle_score: Label = $"Score Manager/Bottle Score"

func _ready() -> void:
	#player_score.text = bottle_score.text
	GlobalScript.level = 1
	GlobalScript.reset_level_time()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

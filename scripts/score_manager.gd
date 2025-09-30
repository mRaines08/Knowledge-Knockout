extends Node

var score = 0

@onready var bottle_score: Label = $"Bottle Score"

func add_point():
	score+=1
	#bottle_score.text = "Bottles Collected:" + str(score)
	

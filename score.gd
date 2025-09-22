extends Node

var count = 0

@onready var bottle_count: Label = $"Bottle Count"
func add_bottle():
	count+=1
	bottle_count.text = "Bottle Count:" + str(count)

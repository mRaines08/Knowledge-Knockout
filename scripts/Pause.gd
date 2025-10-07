extends Control

@onready var pause_canvas: CanvasLayer = $".."
@onready var pause_canvas2: CanvasLayer = $".."
@onready var pause_canvas3: CanvasLayer = $".."

func resume():
	get_tree().paused = false
	
func pause():
	get_tree().paused = true
	
func testEsc():
	if Input.is_action_just_pressed("esc") and get_tree().paused == false:
		pause()
		pause_canvas.visible = true
		pause_canvas2.visible = true
		pause_canvas3.visible = true
	elif Input.is_action_just_pressed("esc") and get_tree().paused == true:
		resume()
		pause_canvas.visible = false
		pause_canvas2.visible = false
		pause_canvas3.visible = false
		
		
func _on_resume_pressed() -> void:
	resume()
	pause_canvas.visible = false
	pause_canvas2.visible = false

func _on_quit_pressed() -> void:
	resume()
	GlobalScript.count = 0
	get_tree().change_scene_to_file("res://scenes/level_screen.tscn")
	Global.reset()
	


func _on_restart_pressed() -> void:
	resume()
	GlobalScript.count = 0
	get_tree().reload_current_scene()
	Global.reset()

	
func _process(Delta):
	testEsc()

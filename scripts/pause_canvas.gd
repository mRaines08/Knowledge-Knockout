extends CanvasLayer
@onready var pause_canvas: CanvasLayer = $"."
@onready var pause_canvas2: CanvasLayer = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pause_canvas.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
func Esc():
	if Input.is_action_just_pressed("esc") and get_tree().paused == false:
		pause_canvas.visible = true
		
	elif Input.is_action_just_pressed("esc") and get_tree().paused == true:
		pause_canvas.visible = false
		pause_canvas2.visible = false
func _process(Delta):
	Esc()

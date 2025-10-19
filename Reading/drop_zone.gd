extends StaticBody2D

func _ready():
	#color the drop area
	modulate = Color(Color.WEB_GRAY, 0.7)
	
#make the drop zone only visible when dragging
func _process(delta):
	if Global.is_dragging:
		visible = true
	else:
		visible = false

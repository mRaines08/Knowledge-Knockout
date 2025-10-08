extends CanvasLayer

#creates random number generator
var rng = RandomNumberGenerator.new()

#creates varible to track sum
var sum = -1
	
func new_math_question():
	self.visible = true
	get_tree().paused = true
	
	#clear line edit
	$lnedAnswer.text = ""
	
	#places cursor in lneAnswer
	$lnedAnswer.grab_focus()
	
	#instantiates random number genorator
	rng.randomize()
	
	#creates varibles for numbers to be added
	var num1 = rng.randi_range(0,10)
	var num2 = rng.randi_range(0,10)
	sum = num1 + num2
	
	#change text in label to create a math problem
	$lblProblem.text = str(num1) + " + " + str(num2) + " ="




func _on_lned_answer_text_submitted(new_text: String) -> void:
	Global.total_questions += 1
	if $lnedAnswer.text != str(sum):
		Global.questions_wrong += 1
		new_math_question()
	else:
		Global.questions_correct += 1
		get_tree().paused = false
		self.visible = false
		if Global.enemy_encounter:
			Engine.time_scale = 1
			Global.enemy_encounter = false
			

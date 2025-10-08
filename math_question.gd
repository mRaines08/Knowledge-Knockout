extends CanvasLayer

#creates random number generator
var rng = RandomNumberGenerator.new()

#creates varible to track sum
var ans = -1
var math_type = 0
	
func new_math_question():
	self.visible = true
	get_tree().paused = true
	
	#clear line edit
	$lnedAnswer.text = ""
	
	#places cursor in lneAnswer
	$lnedAnswer.grab_focus()
	
	#instantiates random number genorator
	rng.randomize()
	
	#select quesiton type
	math_type = rng.randi_range(1,4)
	
	#creates varibles for numbers to be added
	var num1 = rng.randi_range(0,10)
	var num2 = rng.randi_range(0,10)
	
	if math_type == 1:
		ans = num1 + num2
		#change text in label to create a math problem
		$lblProblem.text = str(num1) + " + " + str(num2) + " ="
	elif math_type == 2:
		if num1 > num2:
			ans = num1 - num2
			$lblProblem.text = str(num1) + " - " + str(num2) + " ="
		else:
			ans = num2 - num1
			$lblProblem.text = str(num2) + " - " + str(num1) + " ="
	elif math_type == 3:
		ans = num1 * num2
		$lblProblem.text = str(num1) + " * " + str(num2) + " ="
	else:
		var big_num = num1 * num2
		if num2 != 0:
			ans = num1
			$lblProblem.text = str(big_num) + " / " + str(num2) + " ="
		else:
			new_math_question()


func _on_lned_answer_text_submitted(new_text: String) -> void:
	Global.total_questions += 1
	if $lnedAnswer.text != str(ans):
		Global.questions_wrong += 1
		new_math_question()
	else:
		Global.questions_correct += 1
		get_tree().paused = false
		self.visible = false
		if Global.enemy_encounter:
			Engine.time_scale = 1
			Global.enemy_encounter = false
			

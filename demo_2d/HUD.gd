extends CanvasLayer

signal start_game

func show_message(text, disappear=false):
	$Message.text = text
	$Message.show()
	if disappear:
		$MessageTimer.start()


func show_game_over():
	show_message("Game Over", true)
	yield($MessageTimer, "timeout")
	
	show_message("Dodge the\nCreeps!")
	
	yield(get_tree().create_timer(1), "timeout")
	$StartButton.show()


func update_score(score):
	$ScoreLabel.text = str(score)


func _on_MessageTimer_timeout():
	$Message.hide()


func _on_StartButton_pressed():
	$StartButton.hide()
	emit_signal("start_game")

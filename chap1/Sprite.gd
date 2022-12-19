extends Sprite

var speed = 400
var angular_speed = PI

func _process_bakup(delta):
	var direction = 0
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	rotation += angular_speed * delta * direction
	position += velocity * delta
	
	
func _process(delta):
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta


func _on_Button_pressed():
	set_process(not is_processing())

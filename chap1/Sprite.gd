extends Sprite

var speed = 400
var angular_speed = PI

func _process(delta):
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

extends KinematicBody2D

const SPEED = 750

var motion = Vector2()

func _physics_process(delta):
	motion.x = 0

	if Input.is_action_pressed("ui_right") :
		motion.x += SPEED
	if Input.is_action_pressed("ui_left") :
		motion.x -= SPEED

	move_and_slide(motion)
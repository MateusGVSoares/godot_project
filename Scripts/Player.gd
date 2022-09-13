extends KinematicBody2D



var velocity = Vector2.ZERO
var move_spd = 150
var gravity = 500
var jump_frc = - 250

func _physics_process(delta):
	velocity.y += gravity*delta	
	# Verifica qual tecla de movimento foi pressionada
	var direction = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	
	if(Input.is_action_pressed("jump")):
		velocity.y = jump_frc
	
	velocity.x = move_spd*direction
	
	move_and_slide(velocity)

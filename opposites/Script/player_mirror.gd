extends CharacterBody2D

#Same script as the OG, but the up, and down and inverted.
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var idle = "" # By default
var isRunning = false

func _process(delta: float) -> void:
	velocity = Vector2()
	
	if Input.is_action_pressed("Left"):
		velocity.x = -SPEED
		animated_sprite_2d.play("Lrun")
		animated_sprite_2d.flip_h = true
		idle = "Left"
		isRunning = true
	elif Input.is_action_pressed("Right"):
		velocity.x = SPEED
		animated_sprite_2d.play("Rrun")
		animated_sprite_2d.flip_h = false
		idle = "Right"
		isRunning = true
	elif Input.is_action_pressed("Up"): # Inverted
		velocity.y = SPEED
		animated_sprite_2d.play("Frun")
		animated_sprite_2d.flip_h = false
		idle = "Front"
		isRunning = true
		
	elif Input.is_action_pressed("Down"): # Inverted		
		velocity.y = -SPEED
		animated_sprite_2d.play("Brun")
		animated_sprite_2d.flip_h = false
		idle = "Back"
		isRunning = true
	else:
		isRunning = false
		
	
	if (!isRunning):
		if idle == "Left":
			animated_sprite_2d.flip_h = true
		else:
			animated_sprite_2d.flip_h = false
		animated_sprite_2d.play(idle)

	move_and_slide()

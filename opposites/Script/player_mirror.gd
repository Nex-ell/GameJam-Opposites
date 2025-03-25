extends CharacterBody2D

#Same script as the OG, but the up, and down and inverted.
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _ready():
	add_to_group("player")  # Add the player to the "players" group


func _process(delta: float) -> void:
	velocity = Vector2()

	if Input.is_action_pressed("Left"):
		velocity.x = -SPEED
	if Input.is_action_pressed("Right"):
		velocity.x = SPEED
	if Input.is_action_pressed("Down"):
		velocity.y = -SPEED
	if Input.is_action_pressed("Up"):
		velocity.y = SPEED

	move_and_slide()

class_name Player
extends CharacterBody2D


@export var SPEED : int
@export var ACCELERATION : int
@export var FRICTION : int
@export var MAX_SPEED : int

var input = Vector2.ZERO
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func player_movement(input, delta):
	# 
	# If there is input, set the velocity and play running animation
	if input: 
		velocity = velocity.move_toward(input * SPEED , delta * ACCELERATION)
		velocity = velocity.limit_length(MAX_SPEED)
		animated_sprite_2d.play("walk")
		#
		# Otherwise when no input, slow down velocity and play idle animation
	else:
		velocity = velocity.move_toward(Vector2(0,0), delta * FRICTION)
		animated_sprite_2d.play("idle")

func _physics_process(delta):
	if get_global_mouse_position().x < global_position.x:
		animated_sprite_2d.flip_h = true
	else:
		animated_sprite_2d.flip_h = false
	
	
	input = Input.get_vector("move_left","move_right","move_up","move_down")
	player_movement(input, delta)
	move_and_slide()

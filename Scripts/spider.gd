extends CharacterBody2D


@export var SPEED : int
@export var HEALTH : int

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	pass


func take_damage(amount: int) -> void:
	animated_sprite_2d.play("hit")
	#
	# Reduce Health
	HEALTH = HEALTH - amount
	print(HEALTH)
	#
	# Check to see if Dead
	if HEALTH <= 0:
		animated_sprite_2d.play("die")
		var time_in_seconds = 1
		await get_tree().create_timer(time_in_seconds).timeout
		queue_free()
	else: 
		var time_in_seconds = 1
		await get_tree().create_timer(time_in_seconds).timeout
		animated_sprite_2d.play("idle")

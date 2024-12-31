extends CharacterBody2D


@export var SPEED : int
@export var player : CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _on_hit_state_processing(delta: float) -> void:
	animated_sprite_2d.play("hit")




func _on_idle_state_processing(delta: float) -> void:
	animated_sprite_2d.play("idle")




func _on_dead_state_entered() -> void:
	animated_sprite_2d.play("die")


func _on_dead_state_exited() -> void:
	queue_free()

func _physics_process(delta: float) -> void:
	position += (player.position - position).normalized() * SPEED * delta
	move_and_collide(Vector2(0,0))

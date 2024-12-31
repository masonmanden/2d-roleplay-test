class_name AggressionRange
extends Area2D

@export var SPEED: int
@export var state_chart : StateChart

var player : Player

func _on_body_entered(body: Node2D) -> void:
	if !body.is_in_group("Player"): return
	player = body
	if state_chart:
		state_chart.send_event("aggressive")



func _on_body_exited(body: Node2D) -> void:
	if !body.is_in_group("Player"): return
	if state_chart:
		state_chart.send_event("passive")



#func _on_aggressive_state_physics_processing(delta: float) -> void:
#	position += (player.position - position).normalized() * SPEED * delta
#	print("Position: " + str(player.position))
#	print(str(player))
#	print(get_parent())
#	get_parent().move_and_collide(Vector2(0,0))

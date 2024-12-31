class_name HitboxComponent
extends Area2D

@export var health_component : HealthComponent
@export var state_chart : StateChart


func take_damage(attack_damage: float):
	if health_component:
		health_component.take_damage(attack_damage)
		
	if state_chart:
		state_chart.send_event("take_damage")













# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

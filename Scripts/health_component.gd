class_name HealthComponent
extends Node2D

@onready var health_bar: ProgressBar = $HealthBar


@export var MAX_HEALTH := 10.0
@export var state_chart : StateChart
var health: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	health = MAX_HEALTH
	health_bar.init_health(health)


func take_damage(attack_damage: float):
	if health <=0: return
	
	health -=attack_damage
	health_bar.health = health
	
	if health <=0:
		if state_chart:
			state_chart.send_event("dead")





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

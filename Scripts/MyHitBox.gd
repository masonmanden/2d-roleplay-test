class_name MyHitBox
extends Area2D

@export var damage : int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	collision_layer = 2
	collision_mask = 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

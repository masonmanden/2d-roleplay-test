class_name AttackComponent
extends Node2D

@export var attack_damage: float


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass





func _on_my_hit_box_area_entered(hitbox: HitboxComponent) -> void:
	if hitbox.has_method("take_damage"):
		hitbox.take_damage(attack_damage)

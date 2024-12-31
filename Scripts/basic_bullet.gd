extends Node2D


const SPEED: int = 300
var attack_damage := 10.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += transform.x * SPEED * delta


func _on_life_timeout() -> void:
	queue_free()


func _on_my_hit_box_area_entered(area: Area2D) -> void:
	print("HIT!")
	queue_free()

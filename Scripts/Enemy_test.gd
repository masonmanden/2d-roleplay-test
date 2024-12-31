extends Node2D

@export var enemy_id:String

func _ready():
	var scene = load(Enemies.Database[enemy_id].scene)
	var instance = scene.instantiate()
	add_child(instance)


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("It worked!")

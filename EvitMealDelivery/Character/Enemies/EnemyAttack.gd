extends Area2D

@export var damage : int = 5

func _ready():
	pass

func _on_body_entered(body):
	print_debug("player hit")
	for child in body.get_children():
		if child is Damageable:
			#child.hit(damage, Vector2.ZERO)
			get_tree().change_scene_to_file("res://game_over.tscn")
			

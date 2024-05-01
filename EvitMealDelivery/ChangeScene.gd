extends Area2D

@export var target_player : CharacterBody2D

func _on_body_entered(body):
	if (body.name == target_player):
		get_tree().change_scene_to_file("res://Levels/new_scene.tscn")

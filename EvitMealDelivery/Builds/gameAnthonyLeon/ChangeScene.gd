extends Area2D

@export var target_level : PackedScene

var entered = false

func _on_body_entered(body: PhysicsBody2D):
	entered = true

func _on_body_exited(body):
	entered = false
	
func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("ui-accept"):
			get_tree().change_scene_to_packed(target_level)

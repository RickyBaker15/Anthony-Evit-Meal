extends State

@export var return_state : State
@export var return_animation_node : String = "move"
@export var attack1_name : String = "attack"

@onready var timer : Timer = $Timer

func _on_snail_attack_body_entered(body):
	timer.start()

func _on_animation_tree_animation_finished(anim_name):
	if(anim_name == attack1_name):
		if(timer.is_stopped()):
			next_state = return_state
			playback.travel(return_animation_node)

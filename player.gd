extends CharacterBody2D

const SPEED = 150.0

func _physics_process(_delta):
	set_collision_mask_value(2, not Input.is_action_pressed("open"))
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED
	move_and_slide()

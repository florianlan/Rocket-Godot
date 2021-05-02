extends RigidBody2D
var check
var rot
var time_start


# Called when the node enters the scene tree for the first time.
func _ready():
	var x = rand_range(50, 1870)
	var y = rand_range(50, 150)
	position = Vector2(x, y)
	contact_monitor = true
	contacts_reported = 2
	check = false
	rot = 0
	time_start = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_colliding_bodies().size() > 0:
		if !check:
			check = true
			time_start = OS.get_unix_time()
			rot = rotation
		else:
			var time = OS.get_unix_time() - time_start
			if time >= 1:
				print(rot)
				print(rotation)
				if rot > rotation - 0.001 && rot < rotation + 0.001 && rot > -0.05 && rot < 0.05:
					get_tree().reload_current_scene()
				else:
					check = false
	
	
	if Input.is_action_pressed("up"):
		var thrust = Vector2(0, -2).rotated(rotation)
		apply_impulse(thrust, thrust)
	
	if Input.is_action_just_pressed("up"):
		$AudioStreamPlayer2D.play()
	
	if Input.is_action_just_released("up"):
		$AudioStreamPlayer2D.stop()
	
	if Input.is_action_pressed("right"):
		apply_torque_impulse(8)
	
	if Input.is_action_pressed("left"):
		apply_torque_impulse(-8)
	

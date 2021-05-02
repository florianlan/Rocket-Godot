extends RigidBody2D

# Declare member variables here. Examples:


# Called when the node enters the scene tree for the first time.
func _ready():
	var x = rand_range(50, 1870)
	var y = rand_range(50, 150)
	position = Vector2(x, y)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("up"):
		var thrust = Vector2(0, -2).rotated(rotation)
		apply_impulse(thrust, thrust)
		
	if Input.is_action_pressed("right"):
		apply_torque_impulse(8)
	
	if Input.is_action_pressed("left"):
		apply_torque_impulse(-8)
			
	pass

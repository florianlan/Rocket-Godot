extends RigidBody2D


# Declare member variables here. Examples:


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var thrust = Vector2(0, 0)
	
	if Input.is_action_pressed("up"):
		thrust.y = -5
		#thrust.x = rotation*5
		apply_impulse(thrust, thrust)
		
	if Input.is_action_pressed("right"):
		
	
	pass

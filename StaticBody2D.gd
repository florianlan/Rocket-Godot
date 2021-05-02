extends StaticBody2D


# Declare member variables here. Examples:


# Called when the node enters the scene tree for the first time.
func _ready():
	var x = rand_range(50, 1870)
	var y = rand_range(830, 1030)
	position = Vector2(x, y)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

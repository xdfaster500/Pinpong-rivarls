extends KinematicBody2D


var move = Vector2()
export var a = true

func _ready():
	var screen = get_viewport_rect().size
	position.x = screen.x/2
	if a:
		position.y = screen.y -10

func _physics_process(delta):
	if a:
		if Input.is_key_pressed(KEY_LEFT):
			move.x = -300
		elif Input.is_key_pressed(KEY_RIGHT):
				move.x = 300
		else:
			move.x = 0
	else:
		if Input.is_key_pressed(KEY_Z):
			move.x = -300
		elif Input.is_key_pressed(KEY_X):
			move.x = 300
		else:
			move.x = 0
	move_and_slide(move)

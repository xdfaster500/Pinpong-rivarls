extends KinematicBody2D
## Player
# Se mueve de derecha a izquierda para rebotar la vola



## Variables privadas
var _move = Vector2()



## Variables exportados
export var bottom = true

export var speed = 300



## Funciones
func _ready():
	var screen = get_viewport_rect().size
	position.x = screen.x/2
#	if bottom:
#		position.y = screen.y -10


func _physics_process(delta):
	if bottom:
		if Input.is_action_pressed("P1_IZQ"):
			_move.x = -speed
		elif Input.is_action_pressed("P1_DER"):
				_move.x = speed
		else:
			_move.x = 0
	else:
		if Input.is_action_pressed("P2_IZQ"):
			_move.x = -speed
		elif Input.is_action_pressed("P2_DER"):
			_move.x = speed
		else:
			_move.x = 0
	move_and_slide(_move)

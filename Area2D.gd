extends Area2D


var speed = Vector2(0, 200)

func _process(delta):
	position += speed.rotated(rotation) * delta
	


func _on_Area2D_body_entered(body):
	rotation = -rotation
	speed =-speed
	rotation_degrees += rand_range(90,-90)

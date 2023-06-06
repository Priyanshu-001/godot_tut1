extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Ground_body_entered(body):
	if body is Player:
		print('GROUNDDDD')
		if body.has_method('die'):
			body.die()
	pass # Replace with function body.


func _on_DeathZone_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body is Player:
		print('GROUNDDDD')
		if body.has_method('die'):
			body.die()
	pass # Replace with function body.

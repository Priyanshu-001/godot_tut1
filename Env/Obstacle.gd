extends Node2D
export var SPEED = 100
signal score
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _physics_process(delta):
	position.x -=SPEED*delta
	if global_position.x <=-200:
		queue_free()
		print("OVER")
		
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Pipe_body_entered(body):
	if body is Player:
		print('WALEE')
		if body.has_method('die'):
			body.die()




func _score(body):
	if body is Player:
		print('score')
		emit_signal('score')
	pass # Replace with function body.
